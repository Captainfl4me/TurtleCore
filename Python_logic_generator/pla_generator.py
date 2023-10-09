"""
This module contains functions for encoding decoding instructions logic
into binary format for a PLA (Programmable Logic Array).
"""
from control_flags import *

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