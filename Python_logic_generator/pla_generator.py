# pylint: disable=line-too-long
# pylint: disable=missing-function-docstring
"""
This module contains functions for encoding decoding instructions logic
into binary format for a PLA (Programmable Logic Array).
"""
from enum import Enum
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


class Instruction:
    """
    This class represents a single instruction.
    """

    def __init__(self, name: str, opcode: int, addressing_mode: AdressModesList):
        self.__name = name
        self.__opcode = opcode
        self.__addressing_mode = addressing_mode
        self.__first_cycle_after_addressing = 0
        self.__cycles = []

        self.__apply_addressing_mode()

    @property
    def name(self) -> str:
        return self.__name

    @property
    def opcode(self) -> int:
        return self.__opcode

    @property
    def addressing_mode(self) -> AdressModesList:
        return self.__addressing_mode

    @property
    def cycles(self) -> list:
        return self.__cycles

    @property
    def first_cycle_after_addressing(self) -> int:
        return self.__first_cycle_after_addressing

    def __apply_addressing_mode(self):
        if self.__addressing_mode == AdressModesList.A:
            self.append_hex_to_cycle(2, PCL_ADL | PCH_ADH | ADL_ABL | ADH_ABH | I_PC)
            self.append_hex_to_cycle(3, PCL_PCL | PCH_PCH)
            self.__first_cycle_after_addressing = 3
        elif self.__addressing_mode == AdressModesList.ABS:
            self.append_hex_to_cycle(2, PCL_ADL | PCH_ADH | ADL_ABL | ADH_ABH | I_PC)
            self.append_hex_to_cycle(3, DL_DB | DB_ADD | O_ADD | PCL_PCL | PCH_PCH | PCL_ADL | PCH_ADH | ADL_ABL | ADH_ABH | SUMS | I_PC)
            self.append_hex_to_cycle(4, DL_ADH | ADH_ABH | ADD_ADL | ADL_ABL | PCL_PCL | PCH_PCH)
            self.__first_cycle_after_addressing = 5
        elif self.__addressing_mode == AdressModesList.ABSX:
            self.append_hex_to_cycle(2, PCL_ADL|PCH_ADH|ADL_ABL|ADH_ABH|I_PC)
            self.append_hex_to_cycle(3, PCL_PCL|PCH_PCH|PCL_ADL|PCH_ADH|ADL_ABL|ADH_ABH|I_PC|DL_DB|DB_ADD|SB_ADD|X_SB|SUMS|ACR_C)
            self.append_hex_to_cycle(4, PCL_PCL|PCH_PCH|ADD_ADL|ADL_ABL|DL_DB|DB_ADD|O_ADD|SUMS)
            self.append_hex_to_cycle(5, ADD_SB06|ADD_SB7|SB_ADH|ADH_ABH|DB0_C)
            self.__first_cycle_after_addressing = 6
        elif self.__addressing_mode == AdressModesList.ABSY:
            self.append_hex_to_cycle(2, PCL_ADL|PCH_ADH|ADL_ABL|ADH_ABH|I_PC)
            self.append_hex_to_cycle(3, PCL_PCL|PCH_PCH|PCL_ADL|PCH_ADH|ADL_ABL|ADH_ABH|I_PC|DL_DB|DB_ADD|SB_ADD|Y_SB|SUMS|ACR_C)
            self.append_hex_to_cycle(4, PCL_PCL|PCH_PCH|ADD_ADL|ADL_ABL|DL_DB|DB_ADD|O_ADD|SUMS)
            self.append_hex_to_cycle(5, ADD_SB06|ADD_SB7|SB_ADH|ADH_ABH|DB0_C)
            self.__first_cycle_after_addressing = 6
        elif self.__addressing_mode == AdressModesList.IMM:
            self.append_hex_to_cycle(2, PCL_ADL | PCH_ADH | ADL_ABL | ADH_ABH | I_PC)
            self.append_hex_to_cycle(3, PCL_PCL | PCH_PCH)
            self.__first_cycle_after_addressing = 3
        elif self.__addressing_mode == AdressModesList.IMP:
            self.append_hex_to_cycle(2, PCL_ADL | PCH_ADH | ADL_ABL | ADH_ABH | I_PC)
            self.append_hex_to_cycle(3, PCL_PCL | PCH_PCH)
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
            self.append_hex_to_cycle(2, PCL_ADL | PCH_ADH | ADL_ABL | ADH_ABH | I_PC)
            self.append_hex_to_cycle(3, PCL_PCL | PCH_PCH | DL_ADL | ADL_ABL | O_ADH0 | O_ADH17 | ADH_ABH)
            self.__first_cycle_after_addressing = 4
        elif self.__addressing_mode == AdressModesList.ZPGX:
            self.append_hex_to_cycle(2, PCL_ADL|PCH_ADH|ADL_ABL|ADH_ABH|I_PC)
            self.append_hex_to_cycle(3, PCL_PCL|PCH_PCH|DL_DB|DB_ADD|X_SB|SB_ADD|SUMS|O_ADH0|O_ADH17|ADH_ABH)
            self.append_hex_to_cycle(4, ADD_ADL|ADL_ABL)
            self.__first_cycle_after_addressing = 5
        elif self.__addressing_mode == AdressModesList.ZPGY:
            self.append_hex_to_cycle(2, PCL_ADL|PCH_ADH|ADL_ABL|ADH_ABH|I_PC)
            self.append_hex_to_cycle(3, PCL_PCL|PCH_PCH|DL_DB|DB_ADD|Y_SB|SB_ADD|SUMS|O_ADH0|O_ADH17|ADH_ABH)
            self.append_hex_to_cycle(4, ADD_ADL|ADL_ABL)
            self.__first_cycle_after_addressing = 5

    def set_cycle(self, cycle: int, value: int):
        self.__cycles[cycle] = value

    def new_cycle(self, value: int):
        self.__cycles.append(value)

    def append_hex_to_cycle(self, cycle: int, value: int):
        if cycle <= 1:
            raise ValueError("Cycles 0 and 1 are reserved for fetch and decode instructions!")

        if len(self.__cycles) <= cycle:
            for _ in range(len(self.__cycles), cycle):
                self.__cycles.append(0)
            self.__cycles.append(value)
        else:
            self.__cycles[cycle] = self.__cycles[cycle] | value

    def append_hex_to_cycle_after_addressing(self, relative_cycle: int, value: int):
        self.append_hex_to_cycle(self.__first_cycle_after_addressing + relative_cycle, value)

    def __str__(self) -> str:
        instr_str = ""
        if len(self.__cycles) == 0:
            raise ValueError("Instruction has no cycles!")

        # add reset cycle if instruction has less than 16 cycles
        cycle_with_reset = self.__cycles
        if len(self.__cycles) < 16:
            cycle_with_reset.append(RST_CYCLE)

        for micro_counter, cycle in enumerate(cycle_with_reset):
            instr_str += f"{Instruction.create_adress(self.opcode, micro_counter):013b} {cycle:063b}\n"
        return instr_str

    @staticmethod
    def create_adress(opcode, micro_counter):
        return opcode << 5 | 0 | micro_counter

    @staticmethod
    def create_opcode_from_abc(a, b, c):
        return hex(a << 5 | b << 2 | c)


def generate_instruction_docs(instructions: list[Instruction]) -> str:
    """
    This function generates markdown documentation table of all instructions.
    """
    return_string = "OpCode | Instruction | Cycles\n-- | -- | --\n"
    for instruction in instructions:
        return_string += f"${instruction.opcode:02x} | {instruction.name} {instruction.addressing_mode.value.short_name} | {len(instruction.cycles)}\n"
    return return_string


def write_irq_pla() -> None:
    file = open("./PLAs/IRQPLA.txt", "w", encoding="utf-8")
    file.write("# Logisim PLA program table\n")
    file.write(f"{0x00:08b} {0b1:02b}\n")
    file.close()


def write_decode_pla(instructions: list[Instruction]) -> None:
    file = open("./PLAs/DecodePLA.txt", "w", encoding="utf-8")
    # write first line of file
    file.write("# Logisim PLA program table\n")
    file.write(f"xxxxxxxxx0000 {(ADH_ABH|ADL_ABL|I_PC|PCL_ADL|PCH_ADH):063b}\n")
    file.write(f"xxxxxxxxx0001 {(PCL_PCL|PCH_PCH):063b}\n")
    for instruction in instructions:
        file.write(str(instruction))
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

    # BRK impl
    brk = Instruction("BRK", 0x00, AdressModesList.IMP)
    brk.set_cycle(2, DBx_ADD | O_ADD | I_ADDC | SUMS | S_ADL | ADL_ABL)
    brk.set_cycle(3, ADD_SB06 | ADD_SB7 | SB_ADH | ADH_ABH | PCH_DB)
    brk.append_hex_to_cycle(4, RW | DB_ADD | S_SB | SB_ADD | SUMS)
    brk.append_hex_to_cycle(5, ADD_SB06 | ADD_SB7 | SB_S | ADD_ADL | ADL_ABL | PCL_DB)
    brk.append_hex_to_cycle(6, RW | DB_ADD | S_SB | SB_ADD | SUMS)
    brk.append_hex_to_cycle(7, ADD_SB06 | ADD_SB7 | SB_S | ADD_ADL | ADL_ABL | P_DB)
    brk.append_hex_to_cycle(8, RW | DB_ADD | S_SB | SB_ADD | SUMS)
    brk.append_hex_to_cycle(9, ADD_SB06 | ADD_SB7 | SB_S)
    brk.append_hex_to_cycle(10, DL_ADL | ADL_PCL)
    brk.append_hex_to_cycle(11, DL_ADH | ADH_PCH)
    instructions.append(brk)

    # LDY immediate
    ldy_imm = Instruction("LDY", 0xA0, AdressModesList.IMM)
    ldy_imm.append_hex_to_cycle_after_addressing(0, DL_DB | DB_ADD | O_ADD | SUMS | DBZ_Z | DB7_N)
    ldy_imm.append_hex_to_cycle_after_addressing(1, ADD_SB06 | ADD_SB7 | SB_Y)
    instructions.append(ldy_imm)

    # LDX immediate
    ldx_imm = Instruction("LDX", 0xA2, AdressModesList.IMM)
    ldx_imm.append_hex_to_cycle_after_addressing(0, DL_DB | DB_ADD | O_ADD | SUMS | DBZ_Z | DB7_N)
    ldx_imm.append_hex_to_cycle_after_addressing(1, ADD_SB06 | ADD_SB7 | SB_X)
    instructions.append(ldx_imm)

    # LDA zeropage
    lda_zpg = Instruction("LDA", 0xA5, AdressModesList.ZPG)
    lda_zpg.append_hex_to_cycle_after_addressing(0, DL_DB | DB_ADD | O_ADD | SUMS | DBZ_Z | DB7_N)
    lda_zpg.append_hex_to_cycle_after_addressing(1, ADD_SB06 | ADD_SB7 | SB_AC)
    instructions.append(lda_zpg)

    # LDA immediate
    lda_imm = Instruction("LDA", 0xA9, AdressModesList.IMM)
    lda_imm.append_hex_to_cycle_after_addressing(0, DL_DB | DB_ADD | O_ADD | SUMS | DBZ_Z | DB7_N)
    lda_imm.append_hex_to_cycle_after_addressing(1, ADD_SB06 | ADD_SB7 | SB_AC)
    instructions.append(lda_imm)

    # LDA absolute
    lda_abs = Instruction("LDA", 0xAD, AdressModesList.ABS)
    lda_abs.append_hex_to_cycle_after_addressing(0, DL_DB | DB_ADD | O_ADD | SUMS | DBZ_Z | DB7_N)
    lda_abs.append_hex_to_cycle_after_addressing(1, ADD_SB06 | ADD_SB7 | SB_AC)
    instructions.append(lda_abs)

    # LDA absolute,X
    lda_absx = Instruction("LDA", 0xBD, AdressModesList.ABSX)
    lda_absx.append_hex_to_cycle_after_addressing(0, DL_DB | DB_ADD | O_ADD | SUMS | DBZ_Z | DB7_N)
    lda_absx.append_hex_to_cycle_after_addressing(1, ADD_SB06 | ADD_SB7 | SB_AC)
    instructions.append(lda_absx)

    # LDA absolute,Y
    lda_absy = Instruction("LDA", 0xB9, AdressModesList.ABSY)
    lda_absy.append_hex_to_cycle_after_addressing(0, DL_DB | DB_ADD | O_ADD | SUMS | DBZ_Z | DB7_N)
    lda_absy.append_hex_to_cycle_after_addressing(1, ADD_SB06 | ADD_SB7 | SB_AC)
    instructions.append(lda_absy)

    # STA absolute
    sta_abs = Instruction("STA", 0x8D, AdressModesList.ABS)
    sta_abs.append_hex_to_cycle_after_addressing(-1, AC_DB)
    sta_abs.append_hex_to_cycle_after_addressing(0, RW)
    instructions.append(sta_abs)

    # STA zpg,X
    sta_zpgx = Instruction("STA", 0x95, AdressModesList.ZPGX)
    sta_zpgx.append_hex_to_cycle_after_addressing(-1, AC_DB)
    sta_zpgx.append_hex_to_cycle_after_addressing(0, RW)
    instructions.append(sta_zpgx)

    # STX absolute
    sty_abs = Instruction("STX", 0x8E, AdressModesList.ABS)
    sty_abs.append_hex_to_cycle_after_addressing(-1, X_SB|SB_DB)
    sty_abs.append_hex_to_cycle_after_addressing(0, RW)
    instructions.append(sty_abs)

    # STX zeropage
    sty_zpg = Instruction("STX", 0x86, AdressModesList.ZPG)
    sty_zpg.append_hex_to_cycle_after_addressing(-1, X_SB|SB_DB)
    sty_zpg.append_hex_to_cycle_after_addressing(0, RW)
    instructions.append(sty_zpg)

    # STY absolute
    sty_abs = Instruction("STY", 0x8C, AdressModesList.ABS)
    sty_abs.append_hex_to_cycle_after_addressing(-1, Y_SB|SB_DB)
    sty_abs.append_hex_to_cycle_after_addressing(0, RW)
    instructions.append(sty_abs)

    # STY zeropage
    sty_zpg = Instruction("STY", 0x84, AdressModesList.ZPG)
    sty_zpg.append_hex_to_cycle_after_addressing(-1, Y_SB|SB_DB)
    sty_zpg.append_hex_to_cycle_after_addressing(0, RW)
    instructions.append(sty_zpg)

    # TSX impl
    tsx_impl = Instruction("TSX", 0xBA, AdressModesList.IMP)
    tsx_impl.append_hex_to_cycle_after_addressing(0, X_SB | SB_S | SB_DB | DBZ_Z | DB7_N)
    instructions.append(tsx_impl)
    # TXS impl
    txs_impl = Instruction("TXS", 0x9A, AdressModesList.IMP)
    txs_impl.append_hex_to_cycle_after_addressing(0, X_SB | SB_S)
    instructions.append(txs_impl)

    # TXA impl
    txa_impl = Instruction("TXA", 0x8A, AdressModesList.IMP)
    txa_impl.append_hex_to_cycle_after_addressing(0, X_SB | SB_AC | SB_DB | DBZ_Z | DB7_N)
    instructions.append(txa_impl)
    # TAX impl
    tax_impl = Instruction("TAX", 0xAA, AdressModesList.IMP)
    tax_impl.append_hex_to_cycle_after_addressing(0, AC_SB | SB_X | SB_DB | DBZ_Z | DB7_N)
    instructions.append(tax_impl)

    # TYA impl
    tya_impl = Instruction("TYA", 0x98, AdressModesList.IMP)
    tya_impl.append_hex_to_cycle_after_addressing(0, Y_SB | SB_AC | SB_DB | DBZ_Z | DB7_N)
    instructions.append(tya_impl)
    # TAY impl
    tay_impl = Instruction("TAY", 0xA8, AdressModesList.IMP)
    tay_impl.append_hex_to_cycle_after_addressing(0, AC_SB | SB_Y | SB_DB | DBZ_Z | DB7_N)
    instructions.append(tay_impl)

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

