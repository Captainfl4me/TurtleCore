# pylint: disable=line-too-long
# pylint: disable=missing-function-docstring
"""
This module contains functions for encoding decoding instructions logic
into binary format for a PLA (Programmable Logic Array).
"""
from enum import Enum
from numpy import vsplit
import pandas as pd
from functools import reduce
import warnings
from control_flags import *


class AdressMode:
    """
    This class represents a single addressing mode.
    """

    __short_name: str
    __full_name: str

    def __init__(self, short_name: str, full_name: str):
        self.__short_name = short_name
        self.__full_name = full_name

    @property
    def short_name(self) -> str:
        return self.__short_name

    @property
    def full_name(self) -> str:
        return self.__full_name


class AdressModesList(Enum):
    """
    This class represents a list of all supported addressing modes.
    """

    A = AdressMode("A", "Accumulator")
    ABS = AdressMode("abs", "Absolute")
    ABSX = AdressMode("abs,X", "Absolute, X-indexed")
    ABSY = AdressMode("abs,Y", "Absolute, Y-indexed")
    IMM = AdressMode("#", "Immediate")
    IMP = AdressMode("imp", "Implied")
    IND = AdressMode("ind", "Indirect")
    XIND = AdressMode("X,ind", "X-indexed, indirect")
    INDY = AdressMode("ind,Y", "Indirect, Y-indexed")
    REL = AdressMode("rel", "Relative")
    ZPG = AdressMode("zpg", "Zero Page")
    ZPGX = AdressMode("zpg,X", "Zero Page, X-indexed")
    ZPGY = AdressMode("zpg,Y", "Zero Page, Y-indexed")


class InstructionName(Enum):
    ADC = "ADC"
    AND = "AND"
    ASL = "ASL"
    BCC = "BCC"
    BCS = "BCS"
    BEQ = "BEQ"
    BIT = "BIT"
    BMI = "BMI"
    BNE = "BNE"
    BPL = "BPL"
    BRK = "BRK"
    BVC = "BVC"
    BVS = "BVS"
    CLC = "CLC"
    CLD = "CLD"
    CLI = "CLI"
    CLV = "CLV"
    CMP = "CMP"
    CPX = "CPX"
    CPY = "CPY"
    DEC = "DEC"
    DEX = "DEX"
    DEY = "DEY"
    EOR = "EOR"
    INC = "INC"
    INX = "INX"
    INY = "INY"
    JMP = "JMP"
    JSR = "JSR"
    LDA = "LDA"
    LDX = "LDX"
    LDY = "LDY"
    LSR = "LSR"
    NOP = "NOP"
    ORA = "ORA"
    PHA = "PHA"
    PHP = "PHP"
    PLA = "PLA"
    PLP = "PLP"
    ROL = "ROL"
    ROR = "ROR"
    RTI = "RTI"
    RTS = "RTS"
    SBC = "SBC"
    SEC = "SEC"
    SED = "SED"
    SEI = "SEI"
    STA = "STA"
    STX = "STX"
    STY = "STY"
    TAX = "TAX"
    TAY = "TAY"
    TSX = "TSX"
    TXA = "TXA"
    TXS = "TXS"
    TYA = "TYA"


class Flag(Enum):
    ANY = -1
    NULL = 0
    C = 1
    Z = 2
    I = 3
    D = 4
    B = 5
    V = 6
    N = 7


class Instruction:
    """
    This class represents a single instruction.
    """

    def __init__(self, name: InstructionName, opcode: int, addressing_mode: AdressModesList):
        self.__name: InstructionName = name
        self.__opcode = opcode
        self.__addressing_mode = addressing_mode
        self.__first_cycle_after_addressing = 0
        self.__cycles: list[tuple[int, int, int]] = [] # (cycle, flag, value)
        self.__save_raw_cycles_after_adressing: list[tuple[int, int, Flag]] = [] # (cycle, flag, value)
        self.__flag = Flag.NULL
        self.__flag_inside_addressing = False

        self.__has_been_validated = False
        self.__apply_addressing_mode()

    @property
    def name(self) -> InstructionName:
        return self.__name

    @property
    def opcode(self) -> int:
        return self.__opcode

    @property
    def addressing_mode(self) -> AdressModesList:
        return self.__addressing_mode

    @property
    def cycles(self) -> list[tuple[int, int, int]]:
        return self.__cycles

    @property
    def first_cycle_after_addressing(self) -> int:
        return self.__first_cycle_after_addressing
    
    @property
    def flag(self) -> Flag:
        return self.__flag

    def __apply_addressing_mode(self):
        if self.__addressing_mode == AdressModesList.A:
            self.set_cycle(2, PCL_ADL | PCH_ADH | ADL_ABL | ADH_ABH | I_PC)
            self.set_cycle(3, PCL_PCL | PCH_PCH)
            self.__first_cycle_after_addressing = 3
        elif self.__addressing_mode == AdressModesList.ABS:
            self.set_cycle(2, PCL_ADL | PCH_ADH | ADL_ABL | ADH_ABH | I_PC)
            self.set_cycle(3, DL_DB | DB_ADD | O_ADD | PCL_PCL | PCH_PCH | PCL_ADL | PCH_ADH | ADL_ABL | ADH_ABH | SUMS | I_PC)
            self.set_cycle(4, DL_ADH | ADH_ABH | ADD_ADL | ADL_ABL | PCL_PCL | PCH_PCH)
            self.__first_cycle_after_addressing = 5
        elif self.__addressing_mode == AdressModesList.ABSX:
            self.set_cycle(2, PCL_ADL|PCH_ADH|ADL_ABL|ADH_ABH|I_PC, Flag.ANY)
            self.set_cycle(3, PCL_PCL|PCH_PCH|PCL_ADL|PCH_ADH|ADL_ABL|ADH_ABH|I_PC|DL_DB|DB_ADD|SB_ADD|X_SB|SUMS|ACR_C, Flag.ANY)
            self.set_cycle(4, PCL_PCL|PCH_PCH|ADD_ADL|ADL_ABL|DL_ADH|ADH_ABH, Flag.NULL)
            self.set_cycle(4, PCL_PCL|PCH_PCH|ADD_ADL|ADL_ABL|DL_DB|DB_ADD|O_ADD|SUMS, Flag.C)
            self.set_cycle(5, ADD_SB06|ADD_SB7|SB_ADH|ADH_ABH|DB0_C, Flag.C)
            self.__flag_inside_addressing = True
            self.__first_cycle_after_addressing = 5
        elif self.__addressing_mode == AdressModesList.ABSY:
            self.set_cycle(2, PCL_ADL|PCH_ADH|ADL_ABL|ADH_ABH|I_PC, Flag.ANY)
            self.set_cycle(3, PCL_PCL|PCH_PCH|PCL_ADL|PCH_ADH|ADL_ABL|ADH_ABH|I_PC|DL_DB|DB_ADD|SB_ADD|Y_SB|SUMS|ACR_C, Flag.ANY)
            self.set_cycle(4, PCL_PCL|PCH_PCH|ADD_ADL|ADL_ABL|DL_ADH|ADH_ABH, Flag.NULL)
            self.set_cycle(4, PCL_PCL|PCH_PCH|ADD_ADL|ADL_ABL|DL_DB|DB_ADD|O_ADD|SUMS, Flag.C)
            self.set_cycle(5, ADD_SB06|ADD_SB7|SB_ADH|ADH_ABH|DB0_C, Flag.C)
            self.__flag_inside_addressing = True
            self.__first_cycle_after_addressing = 5
        elif self.__addressing_mode == AdressModesList.IMM:
            self.set_cycle(2, PCL_ADL | PCH_ADH | ADL_ABL | ADH_ABH | I_PC)
            self.set_cycle(3, PCL_PCL | PCH_PCH)
            self.__first_cycle_after_addressing = 3
        elif self.__addressing_mode == AdressModesList.IMP:
            self.set_cycle(2, PCL_ADL | PCH_ADH | ADL_ABL | ADH_ABH | I_PC)
            self.set_cycle(3, PCL_PCL | PCH_PCH)
            self.__first_cycle_after_addressing = 3
        elif self.__addressing_mode == AdressModesList.IND:
            raise NotImplementedError("Indirect addressing mode is not implemented yet!")
        elif self.__addressing_mode == AdressModesList.XIND:
            raise NotImplementedError("X-indexed, indirect addressing mode is not implemented yet!")
        elif self.__addressing_mode == AdressModesList.INDY:
            raise NotImplementedError("Indirect, Y-indexed addressing mode is not implemented yet!")
        elif self.__addressing_mode == AdressModesList.REL:
            raise NotImplementedError("Relative addressing mode is not implemented yet!")
        elif self.__addressing_mode == AdressModesList.ZPG:
            self.set_cycle(2, PCL_ADL | PCH_ADH | ADL_ABL | ADH_ABH | I_PC)
            self.set_cycle(3, PCL_PCL | PCH_PCH | DL_ADL | ADL_ABL | O_ADH0 | O_ADH17 | ADH_ABH)
            self.__first_cycle_after_addressing = 4
        elif self.__addressing_mode == AdressModesList.ZPGX:
            self.set_cycle(2, PCL_ADL|PCH_ADH|ADL_ABL|ADH_ABH|I_PC)
            self.set_cycle(3, PCL_PCL|PCH_PCH|DL_DB|DB_ADD|X_SB|SB_ADD|SUMS|O_ADH0|O_ADH17|ADH_ABH)
            self.set_cycle(4, ADD_ADL|ADL_ABL)
            self.__first_cycle_after_addressing = 5
        elif self.__addressing_mode == AdressModesList.ZPGY:
            self.set_cycle(2, PCL_ADL|PCH_ADH|ADL_ABL|ADH_ABH|I_PC)
            self.set_cycle(3, PCL_PCL|PCH_PCH|DL_DB|DB_ADD|Y_SB|SB_ADD|SUMS|O_ADH0|O_ADH17|ADH_ABH)
            self.set_cycle(4, ADD_ADL|ADL_ABL)
            self.__first_cycle_after_addressing = 5

    def set_cycle(self, cycle: int, value: int, flag: Flag = Flag.NULL, overwrite: bool = False):
        if self.__flag.value > 0 and flag.value > 0 and flag != self.__flag:
            raise ValueError(f"Instruction {self.__name.value}({self.__opcode:02x}): flag {flag} is not the same as previous flag {self.__flag}!")
        
        for i, (cycle_f, flag_f, _) in enumerate(self.__cycles):
            if cycle_f == cycle and flag_f == flag.value:
                if overwrite is True:
                    self.__cycles[i] = (cycle, flag.value, value)
                else:
                    self.__cycles[i] = (cycle, flag.value, value | self.__cycles[i][2])
                return
        
        # If cycle is not found, add it
        if flag.value > 0 and self.__flag == Flag.NULL:
            self.__flag = flag
            
        max_cycle = max([ cycle for cycle, _, _ in self.__cycles ] if len(self.__cycles) > 0 else [0])
        if cycle > max_cycle+1 and cycle > 2:
            warnings.warn(f"Instruction {self.__name.value}({self.__opcode:02x}): cycle {cycle} create a gap between micro cycle (last cycle: {max_cycle})!", RuntimeWarning)
        self.__cycles.append((cycle, flag.value, value))

    def new_cycle(self, cycle: int, value: int, flag: Flag = Flag.NULL):
        self.__cycles.append((cycle, flag.value, value))

    def set_cycle_after_adressing(self, relative_cycle: int, value: int, flag: Flag = Flag.NULL):
        self.__save_raw_cycles_after_adressing.append((relative_cycle, value, flag))
        self.set_cycle(self.__first_cycle_after_addressing + relative_cycle, value, flag)

    def validate_instruction(self):
        if len(self.__cycles) == 0:
            raise ValueError(f"Instruction has no cycles: {self.__name.value}({self.__opcode:02x})!")

        # add reset cycle if instruction has less than 16 cycles
        cycle_with_reset = self.__cycles.copy()
        flag_list = list(set([ flag for _, flag, _ in self.__cycles ]))
        
        if len([ f for f in flag_list if f > 0 ]) > 2:
            print(f"WARNING: Instruction has more than 2 flags! {self}")
            
        for flag in flag_list:
            if flag == Flag.ANY.value:
                continue
            
            cycles_list =pd.Series([ cycle for cycle, flag_f, _ in cycle_with_reset if flag == flag_f ])
            duplicated_cycles = cycles_list.duplicated()
            # Check for duplicated cycles and merge them
            if duplicated_cycles.any() == True:
                print(f"WARNING: Instruction {self.__name.value}({self.__opcode:02x}) has duplicated cycles for flag {flag}!")
                for dup_cycle in cycles_list[duplicated_cycles]:
                    values_to_merge = [ value for cycle, flag_f, value in cycle_with_reset if cycle == dup_cycle and flag_f == flag ]
                    new_value = reduce(lambda x, y: x | y, values_to_merge)
                    new_cycle = (dup_cycle, flag, new_value)
                    # Remove old cycles and insert new one
                    cycle_with_reset = [ cycle for cycle in cycle_with_reset if cycle[0] != dup_cycle or cycle[1] != flag ]
                    cycle_with_reset.append(new_cycle)
                    # Sort cycles tuple by cycle number
            
            # Sort cycles tuple by cycle number
            cycle_with_reset = sorted(cycle_with_reset, key=lambda x: x[0])
            
            max_cycle = max([ cycle for cycle,flag_f,_ in cycle_with_reset if flag == flag_f ])
            if self.__flag_inside_addressing is True and flag != Flag.NULL.value:
                # If flag is inside addressing mode we need to copy all instruction cycles after addressing mode
                custom_cycles = [ (max_cycle + cycle - self.__first_cycle_after_addressing + 1, flag, value) for cycle, flag_f, value in self.__cycles if cycle >= self.__first_cycle_after_addressing and flag_f == Flag.NULL.value ]
                cycle_with_reset += custom_cycles
                max_cycle = max([ cycle for cycle,flag_f,_ in cycle_with_reset if flag == flag_f ])
            if max_cycle < 16:
                cycle_with_reset.append((max_cycle+1, flag, RST_CYCLE))
        self.__cycles = cycle_with_reset
        self.__has_been_validated = True

    def get_decode_PLA(self) -> str:
        if self.__has_been_validated is False:
            self.validate_instruction()
        instr_str = ""
        for cycle, flag, value in self.__cycles:
            flag_is_not_null = flag != Flag.NULL.value
            instr_str += f"{Instruction.create_adress_str(self.opcode, cycle, int(flag_is_not_null) if flag >= 0 else -1)} {value:063b}\n"

        return instr_str

    def get_last_cycle_of_instruction(self, flag: Flag = Flag.NULL) -> int:
        cycles_with_flags = [ cycle for cycle, flag_f, _ in self.__cycles if flag.value == flag_f ]
        if len(cycles_with_flags) == 0:
            return 0
        else:
            return max(cycles_with_flags)

    def copyInstruction(self, new_opcode: int, new_adress_mode: AdressModesList):
        new_instruction = Instruction(self.__name, new_opcode, new_adress_mode)
        for cycle, value, flag in self.__save_raw_cycles_after_adressing:
            new_instruction.set_cycle_after_adressing(cycle, value, flag)
        return new_instruction
        
    def __repr__(self) -> str:
        return f"Instruction({self.__name.value}, {self.__opcode:02x}, {self.__addressing_mode})"

    @staticmethod
    def create_adress(opcode, micro_counter, flag=0):
        return opcode << 5 | flag << 4 | micro_counter
    
    @staticmethod
    def create_adress_str(opcode: int, micro_counter: int, flag: int = 0) -> str:
        return f"{opcode:08b}{flag if flag >= 0 else 'x'}{micro_counter:04b}"        

    @staticmethod
    def create_opcode_from_abc(a, b, c):
        return hex(a << 5 | b << 2 | c)


def generate_instruction_docs(instructions: list[Instruction]) -> str:
    """
    This function generates markdown documentation table of all instructions.
    """
    return_string = "OpCode | Instruction | Cycles\n-- | -- | --\n"
    for instruction in instructions:
        last_cycle = instruction.get_last_cycle_of_instruction()
        last_cycle_with_flag = instruction.get_last_cycle_of_instruction(instruction.flag)
        return_string += f"${instruction.opcode:02x} | {instruction.name.value} {instruction.addressing_mode.value.short_name} | {last_cycle}{'' if last_cycle_with_flag - last_cycle <= 0 else ' +('+str(last_cycle_with_flag - last_cycle)+')' }\n"
    return return_string


def write_irq_pla() -> None:
    file = open("./PLAs/IRQPLA.txt", "w", encoding="utf-8")
    file.write("# Logisim PLA program table\n")
    file.write(f"{0x00:08b} {0b1:02b}\n")
    file.close()


def write_decode_pla(instructions: list[Instruction]) -> None:
    file = open("./PLAs/DecodePLA.txt", "w", encoding="utf-8")
    file_flag = open("./PLAs/DecodePLA_flagSelect.txt", "w", encoding="utf-8")
    # write first line of file
    file.write("# Logisim PLA program table\n")
    file_flag.write("# Logisim PLA program table\n")
    file.write(f"xxxxxxxxx0000 {(ADH_ABH|ADL_ABL|I_PC|PCL_ADL|PCH_ADH):063b}\n")
    file.write(f"xxxxxxxxx0001 {(PCL_PCL|PCH_PCH):063b}\n")
    for instruction in instructions:
        file.write(instruction.get_decode_PLA())
        file_flag.write(f"{instruction.opcode:08b} {instruction.flag.value:03b}\n")
    file.close()


def write_reset_pla() -> None:
    file = open("./PLAs/ResetPLA.txt", "w", encoding="utf-8")
    file.write("# Logisim PLA program table\n")
    file.write(f"0000 {0:063b}\n")
    file.write(f"0001 {(DL_ADL|ADL_PCL|DB_ADD|O_ADD|SUMS):063b}\n")
    file.write(f"0010 {(DL_ADH|ADH_PCH|ADD_SB06|ADD_SB7|SB_S):063b}\n")
    file.write(f"0100 {RST_CYCLE:063b}\n")

    # Close the file
    file.close()


def write_vectors_pla() -> None:
    file = open("./PLAs/Vectors.txt", "w", encoding="utf-8")
    file.write("# Logisim PLA program table\n")
    # Reset vector
    file.write(f"010 {0xfffc:016b}\n")
    file.write(f"011 {0xfffd:016b}\n")
    # IRQ/BRK vector
    file.write(f"100 {0xfffe:016b}\n")
    file.write(f"101 {0xffff:016b}\n")
    # Close the file
    file.close()


def main():
    instructions: list[Instruction] = []

    ######################################### ADC #########################################
    # ADC immediate
    adc_imm = Instruction(InstructionName.ADC, 0x69, AdressModesList.IMM)
    adc_imm.set_cycle_after_adressing(0, DL_DB | DB_ADD | AC_SB | SB_ADD | SUMS | ACR_C | AVR_V) # | DBZ_Z | DB7_N)
    adc_imm.set_cycle_after_adressing(1, ADD_SB06 | ADD_SB7 | SB_AC | SB_DB | DBZ_Z | DB7_N)
    instructions.append(adc_imm)
    # ADC zeropage
    adc_zpg = adc_imm.copyInstruction(0x65, AdressModesList.ZPG)
    instructions.append(adc_zpg)
    # ADC zeropage,X
    adc_zpgx = adc_imm.copyInstruction(0x75, AdressModesList.ZPGX)
    instructions.append(adc_zpgx)
    # ADC absolute
    adc_abs = adc_imm.copyInstruction(0x6D, AdressModesList.ABS)
    instructions.append(adc_abs)
    # ADC absolute,X
    adc_absx = adc_imm.copyInstruction(0x7D, AdressModesList.ABSX)
    instructions.append(adc_absx)
    # ADC absolute,Y
    adc_absy = adc_imm.copyInstruction(0x79, AdressModesList.ABSY)
    instructions.append(adc_absy)

    ######################################### BRK #########################################
    # BRK impl
    brk = Instruction(InstructionName.BRK, 0x00, AdressModesList.IMP)
    brk.set_cycle(2, DBx_ADD | O_ADD | I_ADDC | SUMS | S_ADL | ADL_ABL, overwrite=True)
    brk.set_cycle(3, ADD_SB06 | ADD_SB7 | SB_ADH | ADH_ABH | PCH_DB, overwrite=True)
    brk.set_cycle(4, RW | DB_ADD | S_SB | SB_ADD | SUMS)
    brk.set_cycle(5, ADD_SB06 | ADD_SB7 | SB_S | ADD_ADL | ADL_ABL | PCL_DB)
    brk.set_cycle(6, RW | DB_ADD | S_SB | SB_ADD | SUMS)
    brk.set_cycle(7, ADD_SB06 | ADD_SB7 | SB_S | ADD_ADL | ADL_ABL | P_DB)
    brk.set_cycle(8, RW | DB_ADD | S_SB | SB_ADD | SUMS)
    brk.set_cycle(9, ADD_SB06 | ADD_SB7 | SB_S)
    brk.set_cycle(10, DL_ADL | ADL_PCL)
    brk.set_cycle(11, DL_ADH | ADH_PCH)
    instructions.append(brk)

    ######################################### LDY #########################################
    # LDY immediate
    ldy_imm = Instruction(InstructionName.LDY, 0xA0, AdressModesList.IMM)
    ldy_imm.set_cycle_after_adressing(0, DL_DB | DB_ADD | O_ADD | SUMS | DBZ_Z | DB7_N)
    ldy_imm.set_cycle_after_adressing(1, ADD_SB06 | ADD_SB7 | SB_Y)
    instructions.append(ldy_imm)
    # LDY zeropage
    ldy_zpg = ldy_imm.copyInstruction(0xA4, AdressModesList.ZPG)
    instructions.append(ldy_zpg)
    # LDY zeropage,X
    ldy_zpgx = ldy_imm.copyInstruction(0xB4, AdressModesList.ZPGX)
    instructions.append(ldy_zpgx)
    # LDY absolute
    ldy_abs = ldy_imm.copyInstruction(0xAC, AdressModesList.ABS)
    instructions.append(ldy_abs)
    # LDY absolute,X
    ldy_absx = ldy_imm.copyInstruction(0xBC , AdressModesList.ABSX)
    instructions.append(ldy_absx)
    
    ######################################### LDX #########################################
    # LDX immediate
    ldx_imm = Instruction(InstructionName.LDX, 0xA2, AdressModesList.IMM)
    ldx_imm.set_cycle_after_adressing(0, DL_DB | DB_ADD | O_ADD | SUMS | DBZ_Z | DB7_N)
    ldx_imm.set_cycle_after_adressing(1, ADD_SB06 | ADD_SB7 | SB_X)
    instructions.append(ldx_imm)
    # LDX zeropage
    ldx_zpg = ldx_imm.copyInstruction(0xA6, AdressModesList.ZPG)
    instructions.append(ldx_zpg)
    # LDX zeropage,Y
    ldx_zpgy = ldx_imm.copyInstruction(0xB6, AdressModesList.ZPGY)
    instructions.append(ldx_zpgy)
    # LDX absolute
    ldx_abs = ldx_imm.copyInstruction(0xAE, AdressModesList.ABS)
    instructions.append(ldx_abs)
    # LDX absolute,Y
    ldx_absy = ldx_imm.copyInstruction(0xBE, AdressModesList.ABSY)
    instructions.append(ldx_absy)

    ######################################### LDA #########################################
    # LDA immediate
    lda_imm = Instruction(InstructionName.LDA, 0xA9, AdressModesList.IMM)
    lda_imm.set_cycle_after_adressing(0, DL_DB | DB_ADD | O_ADD | SUMS | DBZ_Z | DB7_N)
    lda_imm.set_cycle_after_adressing(1, ADD_SB06 | ADD_SB7 | SB_AC)
    instructions.append(lda_imm)
    # LDA zeropage
    lda_zpg = lda_imm.copyInstruction(0xA5, AdressModesList.ZPG)
    instructions.append(lda_zpg)
    # LDA zeropage,X
    lda_zpgx = lda_imm.copyInstruction(0xB5, AdressModesList.ZPGX)
    instructions.append(lda_zpgx)
    # LDA absolute
    lda_abs = lda_imm.copyInstruction(0xAD, AdressModesList.ABS)
    instructions.append(lda_abs)
    # LDA absolute,X
    lda_absx = lda_imm.copyInstruction(0xBD, AdressModesList.ABSX)
    instructions.append(lda_absx)
    # LDA absolute,Y
    lda_absy = lda_imm.copyInstruction(0xB9, AdressModesList.ABSY)
    instructions.append(lda_absy)

    ######################################### SEC #########################################
    # SEC impl
    sec_impl = Instruction(InstructionName.SEC, 0x38, AdressModesList.IMP)
    sec_impl.set_cycle_after_adressing(-1, IR5_C)
    instructions.append(sec_impl)

    ######################################### SED ########################################:w
    # #
    # SED impl
    sed_impl = Instruction(InstructionName.SED, 0xF8, AdressModesList.IMP)
    sed_impl.set_cycle_after_adressing(-1, IR5_D)
    instructions.append(sed_impl)

    ######################################### SEI #########################################
    # SEI impl
    sei_impl = Instruction(InstructionName.SEI, 0x78, AdressModesList.IMP)
    sei_impl.set_cycle_after_adressing(-1, IR5_I)
    instructions.append(sei_impl)

    ######################################### STA #########################################
    # STA zeropage
    sta_zpg = Instruction(InstructionName.STA, 0x85, AdressModesList.ZPG)
    sta_zpg.set_cycle_after_adressing(-1, AC_DB)
    sta_zpg.set_cycle_after_adressing(0, RW)
    instructions.append(sta_zpg)
    # STA zeropage,X
    sta_zpgx = sta_zpg.copyInstruction(0x95, AdressModesList.ZPGX)
    instructions.append(sta_zpgx)
    # STA absolute
    sta_abs = sta_zpg.copyInstruction(0x8D, AdressModesList.ABS)
    instructions.append(sta_abs)
    # STA absolute,X
    sta_absx = sta_zpg.copyInstruction(0x9D, AdressModesList.ABSX)
    instructions.append(sta_absx)
    # STA absolute,Y
    sta_absy = sta_zpg.copyInstruction(0x99, AdressModesList.ABSY)
    instructions.append(sta_absy)
    
    ######################################### STX #########################################
    # STX zeropage
    stx_zpg = Instruction(InstructionName.STX, 0x86, AdressModesList.ZPG)
    stx_zpg.set_cycle_after_adressing(-1, X_SB|SB_DB)
    stx_zpg.set_cycle_after_adressing(0, RW)
    instructions.append(stx_zpg)
    # STX zeropage,Y
    stx_zpgy = stx_zpg.copyInstruction(0x96, AdressModesList.ZPGY)
    instructions.append(stx_zpgy)
    # STX absolute
    stx_abs = stx_zpg.copyInstruction(0x8E, AdressModesList.ABS)
    instructions.append(stx_abs)

    ######################################### STY #########################################
    # STY zeropage
    sty_zpg = Instruction(InstructionName.STY, 0x84, AdressModesList.ZPG)
    sty_zpg.set_cycle_after_adressing(-1, Y_SB|SB_DB)
    sty_zpg.set_cycle_after_adressing(0, RW)
    instructions.append(sty_zpg)
    # STY zeropage,X
    sty_zpgx = sty_zpg.copyInstruction(0x94, AdressModesList.ZPGX)
    instructions.append(sty_zpgx)
    # STY absolute
    sty_abs = sty_zpg.copyInstruction(0x8C, AdressModesList.ABS)
    instructions.append(sty_abs)

    ######################################### TAX #########################################
    # TAX impl
    tax_impl = Instruction(InstructionName.TAX, 0xAA, AdressModesList.IMP)
    tax_impl.set_cycle_after_adressing(0, AC_SB | SB_X | SB_DB | DBZ_Z | DB7_N)
    instructions.append(tax_impl)

    ######################################### TAY #########################################
    # TAY impl
    tay_impl = Instruction(InstructionName.TAY, 0xA8, AdressModesList.IMP)
    tay_impl.set_cycle_after_adressing(0, AC_SB | SB_Y | SB_DB | DBZ_Z | DB7_N)
    instructions.append(tay_impl)

    ######################################### TSX #########################################
    # TSX impl
    tsx_impl = Instruction(InstructionName.TSX, 0xBA, AdressModesList.IMP)
    tsx_impl.set_cycle_after_adressing(0, X_SB | SB_S | SB_DB | DBZ_Z | DB7_N)
    instructions.append(tsx_impl)

    ######################################### TXA #########################################
    # TXA impl
    txa_impl = Instruction(InstructionName.TXA, 0x8A, AdressModesList.IMP)
    txa_impl.set_cycle_after_adressing(0, X_SB | SB_AC | SB_DB | DBZ_Z | DB7_N)
    instructions.append(txa_impl)
    
    ######################################### TXS #########################################
    # TXS impl
    txs_impl = Instruction(InstructionName.TXS, 0x9A, AdressModesList.IMP)
    txs_impl.set_cycle_after_adressing(0, X_SB | SB_S)
    instructions.append(txs_impl)
    
    ######################################### TYA ######################################### 
    # TYA impl
    tya_impl = Instruction(InstructionName.TYA, 0x98, AdressModesList.IMP)
    tya_impl.set_cycle_after_adressing(0, Y_SB | SB_AC | SB_DB | DBZ_Z | DB7_N)
    instructions.append(tya_impl)

    for instruction in instructions:
        instruction.validate_instruction()

    print("------ DOC INSTRCUTION TABLE -------")
    print(generate_instruction_docs(instructions))
    print("------ GENERATE IRQ -------")
    write_irq_pla()
    print("------ GENERATE PLA -------")
    write_decode_pla(instructions)
    print("------ GENERATE RESET -------")
    write_reset_pla()
    print("------ GENERATE VECTORS -------")
    write_vectors_pla()
    return


if __name__ == "__main__":
    main()

