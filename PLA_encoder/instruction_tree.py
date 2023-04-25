import sys

tree_size = 40
for i in range(tree_size):
  sys.stdout.write("0b") 
  for j in range(tree_size - i - 1):
    sys.stdout.write("0") 
  sys.stdout.write("1") 
  for j in range(i):  
    sys.stdout.write("0") 
  sys.stdout.write("\n") 