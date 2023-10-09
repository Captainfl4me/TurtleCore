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

    A = AdressMode('A', 'Accumulator')
    ABS = AdressMode('abs', 'Absolute')
    ABSX = AdressMode('abs,X', 'Absolute, X-indexed')
    ABSY = AdressMode('abs,Y', 'Absolute, Y-indexed')
    IMM = AdressMode('#', 'Immediate')
    IMP = AdressMode('imp', 'Implied')
    IND = AdressMode('ind', 'Indirect')
    XIND = AdressMode('X,ind', 'X-indexed, indirect')
    INDY = AdressMode('ind,Y', 'Indirect, Y-indexed')
    REL = AdressMode('rel', 'Relative')
    ZPG = AdressMode('zpg', 'Zero Page')
    ZPGX = AdressMode('zpg,X', 'Zero Page, X-indexed')
    ZPGY = AdressMode('zpg,Y', 'Zero Page, Y-indexed')


class Instruction:
    """
    This class represents a single instruction.
    """

    def __init__(self, name: str, opcode: int, addressing_mode: AdressModesList):
        self.__name = name
        self.__opcode = opcode
        self.__addressing_mode = addressing_mode
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

    def __apply_addressing_mode(self):
        if self.__addressing_mode == AdressModesList.A:
            self.append_hex_to_cycle(2, PCL_ADL|PCH_ADH|ADL_ABL|ADH_ABH|I_PC)
            self.append_hex_to_cycle(3, PCL_PCL|PCH_PCH)
        elif self.__addressing_mode == AdressModesList.ABS:
            self.append_hex_to_cycle(2, PCL_ADL|PCH_ADH|ADL_ABL|ADH_ABH|I_PC)
            self.append_hex_to_cycle(3, DL_DB|DB_ADD|O_ADD|PCL_PCL|PCH_PCH|PCL_ADL|PCH_ADH|ADL_ABL|ADH_ABH|SUMS)
            self.append_hex_to_cycle(4, DL_ADH|ADH_ABH|ADD_ADL|ADL_ABL|I_PC)
        elif self.__addressing_mode == AdressModesList.ABSX:
            raise NotImplementedError('Absolute, X-indexed addressing mode is not implemented yet!')
        elif self.__addressing_mode == AdressModesList.ABSY:
            raise NotImplementedError('Absolute, Y-indexed addressing mode is not implemented yet!')
        elif self.__addressing_mode == AdressModesList.IMM:
            self.append_hex_to_cycle(2, PCL_ADL|PCH_ADH|ADL_ABL|ADH_ABH|I_PC)
            self.append_hex_to_cycle(3, PCL_PCL|PCH_PCH)
        elif self.__addressing_mode == AdressModesList.IMP:
            self.append_hex_to_cycle(2, PCL_ADL|PCH_ADH|ADL_ABL|ADH_ABH|I_PC)
            self.append_hex_to_cycle(3, PCL_PCL|PCH_PCH)
        elif self.__addressing_mode == AdressModesList.IND:
            raise NotImplementedError('Indirect addressing mode is not implemented yet!')
        elif self.__addressing_mode == AdressModesList.XIND:
            raise NotImplementedError('X-indexed, indirect addressing mode is not implemented yet!')
        elif self.__addressing_mode == AdressModesList.INDY:
            raise NotImplementedError('Indirect, Y-indexed addressing mode is not implemented yet!')
        elif self.__addressing_mode == AdressModesList.REL:
            raise NotImplementedError('Relative addressing mode is not implemented yet!')
        elif self.__addressing_mode == AdressModesList.ZPG:
            self.append_hex_to_cycle(2, PCL_ADL|PCH_ADH|ADL_ABL|ADH_ABH|I_PC)
            self.append_hex_to_cycle(3, PCL_PCL|PCH_PCH|DL_ADL|ADL_ABL|O_ADH0|O_ADH17|ADH_ABH)
        elif self.__addressing_mode == AdressModesList.ZPGX:
            raise NotImplementedError('Zero Page, X-indexed addressing mode is not implemented yet!')
        elif self.__addressing_mode == AdressModesList.ZPGY:
            raise NotImplementedError('Zero Page, Y-indexed addressing mode is not implemented yet!')


    def set_cycle(self, cycle: int, value: int):
        self.__cycles[cycle] = value

    def new_cycle(self, value: int):
        self.__cycles.append(value)

    def append_hex_to_cycle(self, cycle: int, value: int):
        if cycle <= 1:
            raise ValueError('Cycles 0 and 1 are reserved for fetch and decode instructions!')

        if len(self.__cycles) <= cycle:
            for _ in range(len(self.__cycles), cycle):
                self.__cycles.append(0)
            self.__cycles.append(value)
        else:
            self.__cycles[cycle] = self.__cycles[cycle] | value

def generate_instruction_docs(instructions: list[Instruction]) -> str:
    """
    This function generates markdown documentation table of all instructions.
    """
    return_string = 'OpCode | Instruction | Cycles\n-- | -- | --\n'
    for instruction in instructions:
        return_string += f"${instruction.opcode:02x} | {instruction.name} {instruction.addressing_mode.value.short_name} | {len(instruction.cycles)}\n"
    return return_string

def main():
    instructions: list[Instruction] = []

    brk = Instruction('BRK', 0x00, AdressModesList.IMP)
    brk.set_cycle(2, DBx_ADD|O_ADD|I_ADDC|SUMS|S_ADL|ADL_ABL)
    brk.set_cycle(3, ADD_SB06|ADD_SB7|SB_ADH|ADH_ABH|PCH_DB)
    brk.append_hex_to_cycle(4, RW|DB_ADD|S_SB|SB_ADD|SUMS)
    brk.append_hex_to_cycle(5, ADD_SB06|ADD_SB7|SB_S|ADD_ADL|ADL_ABL|PCL_DB)
    brk.append_hex_to_cycle(6, RW|DB_ADD|S_SB|SB_ADD|SUMS|SB_X)
    brk.append_hex_to_cycle(7, ADD_SB06|ADD_SB7|SB_S|ADD_ADL|ADL_ABL|P_DB)
    brk.append_hex_to_cycle(8, RW|DB_ADD|S_SB|SB_ADD|SUMS)
    brk.append_hex_to_cycle(9, ADD_SB06|ADD_SB7|SB_S)
    brk.append_hex_to_cycle(10, DL_ADL|ADL_PCL)
    brk.append_hex_to_cycle(11, DL_ADH|ADH_PCH)
    instructions.append(brk)

    print("------ DOC INSTRCUTION TABLE -------")
    print(generate_instruction_docs(instructions))
    return

"""
def convertBinToStr(binary, fill = PLAOUT_LEN):
    return bin(binary)[2:].zfill(fill)

def formatPLALine(addr, out):
    return convertBinToStr(addr, 13) + ' ' + convertBinToStr(out) + '\n'

def createOpCodeFromabc(a, b, c):
    return hex(a << 5 | b << 2 | c )

def createAddress(opcode, microCounter):
    return opcode << 5 | 0 | microCounter

# intruction OPCODE
BRK = [ 0x00 ]
LDY = [ 0xa0, 0xa4,   -1, 0xac,   -1, 0xb4,   -1, 0xbc ]
LDA = [ 0xa1, 0xa5, 0xa9, 0xad, 0xb1, 0xb5, 0xb9, 0xbd ]
TYA = [ 0x98 ]
TXA = [ 0x8a ]
TAY = [ 0xa8 ]
TAX = [ 0xaa ]
TSX = [ 0xba ]
TXS = [ 0x9a ]
STA = [ 0x81, 0x85, 0x8d, 0x91, 0x95, 0x99, 0x9d ]


# Interrupt vectors control
file = open('IRQPLA.txt', 'w')
# write first line of file
file.write('# Logisim PLA program table\n')

file.write(convertBinToStr(BRK[0], 8) + ' ' + convertBinToStr(0b1, 2) + '\n')

file.close()

file = open('DecodePLA.txt', 'w')
# write first line of file
file.write('# Logisim PLA program table\n')

# Share fetch opcode
file.write("xxxxxxxxx0000" + ' ' + convertBinToStr(ADH_ABH|ADL_ABL|I_PC|PCL_ADL|PCH_ADH) + '\n')
file.write("xxxxxxxxx0001" + ' ' + convertBinToStr(PCL_PCL|PCH_PCH) + '\n')

# BRK impl
file.write(formatPLALine(createAddress(BRK[0], 2), DBx_ADD|O_ADD|I_ADDC|SUMS|S_ADL|ADL_ABL))
file.write(formatPLALine(createAddress(BRK[0], 3), ADD_SB06|ADD_SB7|SB_ADH|ADH_ABH|PCH_DB))
file.write(formatPLALine(createAddress(BRK[0], 4), RW|DB_ADD|S_SB|SB_ADD|SUMS))
file.write(formatPLALine(createAddress(BRK[0], 5), ADD_SB06|ADD_SB7|SB_S|ADD_ADL|ADL_ABL|PCL_DB))
file.write(formatPLALine(createAddress(BRK[0], 6), RW|DB_ADD|S_SB|SB_ADD|SUMS|SB_X))
file.write(formatPLALine(createAddress(BRK[0], 7), ADD_SB06|ADD_SB7|SB_S|ADD_ADL|ADL_ABL|P_DB))
file.write(formatPLALine(createAddress(BRK[0], 8), RW|DB_ADD|S_SB|SB_ADD|SUMS))
file.write(formatPLALine(createAddress(BRK[0], 9), ADD_SB06|ADD_SB7|SB_S))
file.write(formatPLALine(createAddress(BRK[0], 10), DL_ADL|ADL_PCL))
file.write(formatPLALine(createAddress(BRK[0], 11), DL_ADH|ADH_PCH))
file.write(formatPLALine(createAddress(BRK[0], 12), RST_CYCLE))

# LDY immediate
file.write(formatPLALine(createAddress(LDY[0], 2), PCL_ADL|PCH_ADH|ADL_ABL|ADH_ABH|I_PC))
file.write(formatPLALine(createAddress(LDY[0], 3), PCL_PCL|PCH_PCH|DL_DB|DB_ADD|O_ADD|SUMS|DBZ_Z|DB7_N))
file.write(formatPLALine(createAddress(LDY[0], 4), ADD_SB06|ADD_SB7|SB_Y))
file.write(formatPLALine(createAddress(LDY[0], 5), RST_CYCLE))

# LDA zeropage
file.write(formatPLALine(createAddress(LDA[1], 2), PCL_ADL|PCH_ADH|ADL_ABL|ADH_ABH|I_PC))
file.write(formatPLALine(createAddress(LDA[1], 3), PCL_PCL|PCH_PCH|DL_ADL|ADL_ABL|O_ADH0|O_ADH17|ADH_ABH));
file.write(formatPLALine(createAddress(LDA[1], 4), DL_DB|DB_ADD|O_ADD|SUMS|DBZ_Z|DB7_N|SB_X))
file.write(formatPLALine(createAddress(LDA[1], 5), ADD_SB06|ADD_SB7|SB_AC))
file.write(formatPLALine(createAddress(LDA[1], 6), RST_CYCLE))

# LDA immediate
file.write(formatPLALine(createAddress(LDA[2], 2), PCL_ADL|PCH_ADH|ADL_ABL|ADH_ABH|I_PC))
file.write(formatPLALine(createAddress(LDA[2], 3), PCL_PCL|PCH_PCH|DL_DB|DB_ADD|O_ADD|SUMS|DBZ_Z|DB7_N|SB_X))
file.write(formatPLALine(createAddress(LDA[2], 4), ADD_SB06|ADD_SB7|SB_AC))
file.write(formatPLALine(createAddress(LDA[2], 5), RST_CYCLE))

# LDA absolute
file.write(formatPLALine(createAddress(LDA[3], 2), PCL_ADL|PCH_ADH|ADL_ABL|ADH_ABH|I_PC))
file.write(formatPLALine(createAddress(LDA[3], 3), DL_DB|DB_ADD|O_ADD|PCL_PCL|PCH_PCH|PCL_ADL|PCH_ADH|ADL_ABL|ADH_ABH|SUMS))
file.write(formatPLALine(createAddress(LDA[3], 4), DL_ADH|ADH_ABH|ADD_ADL|ADL_ABL|I_PC))
file.write(formatPLALine(createAddress(LDA[3], 5), PCL_PCL|PCH_PCH|DL_DB|DB_ADD|O_ADD|SUMS|DBZ_Z|DB7_N|SB_X))
file.write(formatPLALine(createAddress(LDA[3], 6), ADD_SB06|ADD_SB7|SB_AC))
file.write(formatPLALine(createAddress(LDA[3], 7), RST_CYCLE))

# LDA absolute, Y
file.write(formatPLALine(createAddress(LDA[6], 2), PCL_ADL|PCH_ADH|ADL_ABL|ADH_ABH|I_PC))
file.write(formatPLALine(createAddress(LDA[6], 3), PCL_PCL|PCH_PCH|PCL_ADL|PCH_ADH|ADL_ABL|ADH_ABH|I_PC|DL_DB|DB_ADD|SB_ADD|Y_SB|SUMS|ACR_C))
file.write(formatPLALine(createAddress(LDA[6], 4), PCL_PCL|PCH_PCH|ADD_ADL|ADL_ABL|DL_DB|DB_ADD|O_ADD|SUMS))
file.write(formatPLALine(createAddress(LDA[6], 5), ADD_SB06|ADD_SB7|SB_ADH|ADH_ABH|DB0_C))
file.write(formatPLALine(createAddress(LDA[6], 6), DL_DB|DB_ADD|O_ADD|SUMS))
file.write(formatPLALine(createAddress(LDA[6], 7), ADD_SB06|ADD_SB7|DBZ_Z|DB7_N|SB_AC))
file.write(formatPLALine(createAddress(LDA[6], 8), RST_CYCLE))

# LDA absolute, X
file.write(formatPLALine(createAddress(LDA[6], 2), PCL_ADL|PCH_ADH|ADL_ABL|ADH_ABH|I_PC))
file.write(formatPLALine(createAddress(LDA[6], 3), PCL_PCL|PCH_PCH|PCL_ADL|PCH_ADH|ADL_ABL|ADH_ABH|I_PC|DL_DB|DB_ADD|SB_ADD|X_SB|SUMS|ACR_C))
file.write(formatPLALine(createAddress(LDA[6], 4), PCL_PCL|PCH_PCH|ADD_ADL|ADL_ABL|DL_DB|DB_ADD|O_ADD|SUMS))
file.write(formatPLALine(createAddress(LDA[6], 5), ADD_SB06|ADD_SB7|SB_ADH|ADH_ABH|DB0_C))
file.write(formatPLALine(createAddress(LDA[6], 6), DL_DB|DB_ADD|O_ADD|SUMS))
file.write(formatPLALine(createAddress(LDA[6], 7), ADD_SB06|ADD_SB7|DBZ_Z|DB7_N|SB_AC))
file.write(formatPLALine(createAddress(LDA[6], 8), RST_CYCLE))

# STA absolute
file.write(formatPLALine(createAddress(STA[2], 2), PCL_ADL|PCH_ADH|ADL_ABL|ADH_ABH|I_PC))
file.write(formatPLALine(createAddress(STA[2], 3), DL_DB|DB_ADD|O_ADD|PCL_PCL|PCH_PCH|PCL_ADL|PCH_ADH|ADL_ABL|ADH_ABH|SUMS))
file.write(formatPLALine(createAddress(STA[2], 4), DL_ADH|ADH_ABH|ADD_ADL|ADL_ABL|I_PC|AC_DB))
file.write(formatPLALine(createAddress(STA[2], 5), PCL_PCL|PCH_PCH|RW))
file.write(formatPLALine(createAddress(STA[6], 6), RST_CYCLE))

# TSX impl
file.write(formatPLALine(createAddress(TSX[0], 2), S_SB|SB_X|SB_DB|DBZ_Z|DB7_N))
# TXS impl
file.write(formatPLALine(createAddress(TXS[0], 2), X_SB|SB_S))

# TXA impl
file.write(formatPLALine(createAddress(TXA[0], 2), X_SB|SB_AC|SB_DB|DBZ_Z|DB7_N))
# TAX impl
file.write(formatPLALine(createAddress(TAX[0], 2), AC_SB|SB_X|SB_DB|DBZ_Z|DB7_N))

# TYA impl
file.write(formatPLALine(createAddress(TYA[0], 2), Y_SB|SB_AC|SB_DB|DBZ_Z|DB7_N))
# TAY impl
file.write(formatPLALine(createAddress(TAY[0], 2), AC_SB|SB_Y|SB_DB|DBZ_Z|DB7_N))

# Close the file
file.close()


file = open('ResetPLA.txt', 'w')
# write first line of file
file.write('# Logisim PLA program table\n')

file.write("0000" + ' ' + convertBinToStr(0) + '\n')
file.write("0001" + ' ' + convertBinToStr(DL_ADL|ADL_PCL|DB_ADD|O_ADD|SUMS) + '\n')
file.write("0010" + ' ' + convertBinToStr(DL_ADH|ADH_PCH|ADD_SB06|ADD_SB7|SB_S) + '\n')
file.write("0100" + ' ' + convertBinToStr(RST_CYCLE) + '\n')

# Close the file
file.close()

file = open('Vectors.txt', 'w')
# write first line of file
file.write('# Logisim PLA program table\n')

# Reset vector
file.write("010" + ' ' + convertBinToStr(0xfffc, 16) + '\n')
file.write("011" + ' ' + convertBinToStr(0xfffd, 16) + '\n')

# IRQ/BRK vector
file.write("100" + ' ' + convertBinToStr(0xfffe, 16) + '\n')
file.write("101" + ' ' + convertBinToStr(0xffff, 16) + '\n')

# Close the file
file.close()
"""

if __name__ == '__main__':
    main()
