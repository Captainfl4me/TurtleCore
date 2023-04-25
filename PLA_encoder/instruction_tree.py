import sys

# Write python code for all label constant (map them to a binary output)

cpu_controls = [
  "DL_DB",
  "DL_ADL",
  "DL_ADH",
  "O_ADH0",
  "O_ADH17",
  "ADH_ABH",
  "ADL_ABL",
  "PCL_PCL",
  "ADL_PCL",
  "I_PC",
  "PCL_DB",
  "PCL_ADL",
  "PCH_PCH",
  "ADH_PCH",
  "PCH_DB",
  "PCH_ADH",
  "SB_ADH",
  "SB_DB",
  "O_ADL0",
  "O_ADL1",
  "O_ADL2",
  "S_ADL",
  "SB_S",
  "S_SB",
  "DBx_ADD",
  "DB_ADD",
  "ADL_ADD",
  "I_ADDC",
  "DDA",
  "DSA",
  "SUMS",
  "ANDS",
  "EORS",
  "ORS",
  "SRS",
  "ADD_ADL",
  "ADD_SB06",
  "ADD_SB7",
  "O_ADD",
  "SB_ADD",
  "SB_AC",
  "AC_DB",
  "AC_SB",
  "SB_X",
  "X_SB",
  "SB_Y",
  "Y_SB",
  "P_DB",
  "DB0_C",
  "IR5_C",
  "ACR_C",
  "DB1_Z",
  "DBZ_Z",
  "DB2_I",
  "IR5_I",
  "DB3_D",
  "IR5_D",
  "DB6_V",
  "AVR_V",
  "I_V",
  "DB7_N",
  "RW"
]
tree_size = len(cpu_controls)

for i in range(tree_size):
  sys.stdout.write(cpu_controls[i] + " = 0b") 
  for j in range(tree_size - i - 1):
    sys.stdout.write("0") 
  sys.stdout.write("1") 
  for j in range(i):  
    sys.stdout.write("0") 
  sys.stdout.write("\n") 