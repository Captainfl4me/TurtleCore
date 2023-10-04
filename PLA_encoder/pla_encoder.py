# Control constants
DL_DB = 0b000000000000000000000000000000000000000000000000000000000000001
DL_ADL = 0b000000000000000000000000000000000000000000000000000000000000010
DL_ADH = 0b000000000000000000000000000000000000000000000000000000000000100
O_ADH0 = 0b000000000000000000000000000000000000000000000000000000000001000
O_ADH17 = 0b000000000000000000000000000000000000000000000000000000000010000
ADH_ABH = 0b000000000000000000000000000000000000000000000000000000000100000
ADL_ABL = 0b000000000000000000000000000000000000000000000000000000001000000
PCL_PCL = 0b000000000000000000000000000000000000000000000000000000010000000
ADL_PCL = 0b000000000000000000000000000000000000000000000000000000100000000
I_PC = 0b000000000000000000000000000000000000000000000000000001000000000
PCL_DB = 0b000000000000000000000000000000000000000000000000000010000000000
PCL_ADL = 0b000000000000000000000000000000000000000000000000000100000000000
PCH_PCH = 0b000000000000000000000000000000000000000000000000001000000000000
ADH_PCH = 0b000000000000000000000000000000000000000000000000010000000000000
PCH_DB = 0b000000000000000000000000000000000000000000000000100000000000000
PCH_ADH = 0b000000000000000000000000000000000000000000000001000000000000000
SB_ADH = 0b000000000000000000000000000000000000000000000010000000000000000
SB_DB = 0b000000000000000000000000000000000000000000000100000000000000000
O_ADL0 = 0b000000000000000000000000000000000000000000001000000000000000000
O_ADL1 = 0b000000000000000000000000000000000000000000010000000000000000000
O_ADL2 = 0b000000000000000000000000000000000000000000100000000000000000000
S_ADL = 0b000000000000000000000000000000000000000001000000000000000000000
SB_S = 0b000000000000000000000000000000000000000010000000000000000000000
S_SB = 0b000000000000000000000000000000000000000100000000000000000000000
DBx_ADD = 0b000000000000000000000000000000000000001000000000000000000000000
DB_ADD = 0b000000000000000000000000000000000000010000000000000000000000000
ADL_ADD = 0b000000000000000000000000000000000000100000000000000000000000000
I_ADDC = 0b000000000000000000000000000000000001000000000000000000000000000
DDA = 0b000000000000000000000000000000000010000000000000000000000000000
DSA = 0b000000000000000000000000000000000100000000000000000000000000000
SUMS = 0b000000000000000000000000000000001000000000000000000000000000000
ANDS = 0b000000000000000000000000000000010000000000000000000000000000000
EORS = 0b000000000000000000000000000000100000000000000000000000000000000
ORS = 0b000000000000000000000000000001000000000000000000000000000000000
SRS = 0b000000000000000000000000000010000000000000000000000000000000000
ADD_ADL = 0b000000000000000000000000000100000000000000000000000000000000000
ADD_SB06 = 0b000000000000000000000000001000000000000000000000000000000000000
ADD_SB7 = 0b000000000000000000000000010000000000000000000000000000000000000
O_ADD = 0b000000000000000000000000100000000000000000000000000000000000000
SB_ADD = 0b000000000000000000000001000000000000000000000000000000000000000
SB_AC = 0b000000000000000000000010000000000000000000000000000000000000000
AC_DB = 0b000000000000000000000100000000000000000000000000000000000000000
AC_SB = 0b000000000000000000001000000000000000000000000000000000000000000
SB_X = 0b000000000000000000010000000000000000000000000000000000000000000
X_SB = 0b000000000000000000100000000000000000000000000000000000000000000
SB_Y = 0b000000000000000001000000000000000000000000000000000000000000000
Y_SB = 0b000000000000000010000000000000000000000000000000000000000000000
P_DB = 0b000000000000000100000000000000000000000000000000000000000000000
DB0_C = 0b000000000000001000000000000000000000000000000000000000000000000
IR5_C = 0b000000000000010000000000000000000000000000000000000000000000000
ACR_C = 0b000000000000100000000000000000000000000000000000000000000000000
DB1_Z = 0b000000000001000000000000000000000000000000000000000000000000000
DBZ_Z = 0b000000000010000000000000000000000000000000000000000000000000000
DB2_I = 0b000000000100000000000000000000000000000000000000000000000000000
IR5_I = 0b000000001000000000000000000000000000000000000000000000000000000
DB3_D = 0b000000010000000000000000000000000000000000000000000000000000000
IR5_D = 0b000000100000000000000000000000000000000000000000000000000000000
DB6_V = 0b000001000000000000000000000000000000000000000000000000000000000
AVR_V = 0b000010000000000000000000000000000000000000000000000000000000000
I_V = 0b000100000000000000000000000000000000000000000000000000000000000
DB7_N = 0b001000000000000000000000000000000000000000000000000000000000000
RW = 0b010000000000000000000000000000000000000000000000000000000000000
RST_CYCLE = 0b100000000000000000000000000000000000000000000000000000000000000

PLAOUT_LEN = 63

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
TSX = [ 0xba ]


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
file.write(formatPLALine(createAddress(LDA[3], 3), DL_DB|DB_ADD|O_ADD|PCL_PCL|PCH_PCH))
file.write(formatPLALine(createAddress(LDA[3], 4), PCL_ADL|PCH_ADH|ADL_ABL|ADH_ABH|SUMS))
file.write(formatPLALine(createAddress(LDA[3], 5), DL_ADH|ADH_ABH|ADD_ADL|ADL_ABL|I_PC))
file.write(formatPLALine(createAddress(LDA[3], 6), PCL_PCL|PCH_PCH|DL_DB|DB_ADD|O_ADD|SUMS|DBZ_Z|DB7_N|SB_X))
file.write(formatPLALine(createAddress(LDA[3], 7), ADD_SB06|ADD_SB7|SB_AC))
file.write(formatPLALine(createAddress(LDA[3], 8), RST_CYCLE))

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

# TSX impl
file.write(formatPLALine(createAddress(TSX[0], 2), S_SB|SB_X|SB_DB|DBZ_Z|DB7_N))

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