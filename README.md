# Turtle Core 1

<p align="center">
  <img style="width: 40%" src="Docs/Logo.png" />
</p>

This is a homemade 8bits CPU architecture. The goal of this project is to learn how CPU work and have fun.

## CPU Architecture

As all CPU Turtle core 1 is mostly built around differents registers links with multiple 8 bits bus.

![Register Architecture](Docs/TurtleCoreDiagram.drawio.svg)

### Registers file

Acronym | Goal
--|--
RA|Register that act as accumulator. 
RB|Second entry for the ALU.
RX|General Purpose register, can be use as temporary register to store data.
RY|General Purpose register, can be use as temporary register to store data.

### Flags

There is 4 flags that are stored in the processor status.

- Carry Flag: The carry flag is set if the last operation caused an overflow from bit 7 of the result or an underflow from bit 0. This condition is set during arithmetic, comparison and during logical shifts. It can be manually set or clear.
- Zero Flag: The zero flag is set when the result of an operation was zero.
- Overflow Flag: The flag is set if the result is an invalid 2's complement result. (64 + 64 = -128).
- Negative Flag: The negative flag is set if the result of the last operation had bit 7 set to a one. So the number is negative if the bit is signed.

### Intructions

The Instruction Set Architecture (ISA) use here is a homemade RISC set that you can find [here](https://github.com/Captainfl4me/tasm).

### Memory

As the adress bus of the CPU is a 16-bits bus we can access 65537 space of 8-bits (1 byte) for a total memory of 65.537KB. The memory will be handle as follow:

Addresses | Type | Total space
-- | -- | --
$0000 - $00FF | Program stack, store on RAM chip | 256B
$0100 - $7EFF | RAM | 32,256B
$7F00 - $7FFF | IO | 256B
$8000 - $FFFF | ROM | 32,768B

## Tools

This project was develop under Vivado Suite to be load on a Basys3 FPGA board. Find the CPU only RTL project under `/turtlecore` folder and the package IP into `/ip_core`. To use the CPU under the full environnement and test it on real hardware you can use `/hw_testbench`.
