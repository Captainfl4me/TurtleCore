"""
  This module generate all the label constants for the PLA encoder (int the file control_flags.py).
"""

CPU_CONTROLS = [
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
  "RW",
  "RST_CYCLE"
]
TREE_SIZE = len(CPU_CONTROLS)

# Interrupt vectors control
with open(file="./Python_logic_generator/control_flags.py", mode="w", encoding="utf-8") as file:
    file.write('"""\nThis module contains control flags definition.\n"""\n\n')

    for i in range(TREE_SIZE):
        file.write(CPU_CONTROLS[i] + " = 0b")
        for j in range(TREE_SIZE - i - 1):
            file.write("0")
        file.write("1")
        for j in range(i):
            file.write("0")
        file.write("\n")

    file.write("\n")
    file.write(f"PLAOUT_LEN = {TREE_SIZE}\n")
    file.write("\n")
