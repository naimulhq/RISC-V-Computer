# Digital Logic Guide

To fully understand how a computer works, it is important to understand the different layers of abstractions within the computer. Here, we will discuss some of the lower layers of abstraction: Transistor Level, Logic Gates and Registers, and Logic Blocks. Furthermore, we will discuss how to represent these different types of hardware using HDL, a Hardware Description Language. Specifically, we will be using Verilog for the tutorial.  

# Lowest Level of Abstration: Transistors  
Logic Gates are the fundamental building block of any computer. Common examples of Logic Gates are AND, OR, NAND, NOR, and XOR. However, in order to create these different type of logic gates requires devices called transistors. One of the most common types of transistors is the MOSFET (Metal Oxide Semiconductor Field Effect Transistor). A circuit diagram of a MOSFET is shown below:  

< Enter Image of Basic MOSFET NMOS Schematic >  
< Enter Image of Basic MOSFET PMOS Schematic >  

MOSFETs can be thought of as a switch. When applied a certain amount of voltage through the gate, the MOSFET will either close the switch or open the switch. There are two different types of MOSFETs: PMOS and NMOS. For an NMOS Transistor, if you apply a high enough voltage, the switch will close and a low enough voltage will cause the switch to remain open. For an PMOS Transistor, it is the exact opposite. If you apply a low enough voltage, the switch will close and a high enough voltage will keep the switch open. The fundamental ideas behind for the two transitors are shown in the diagram below:  
  




# Logic Gates and Truth Tables

**AND Gate**  
< Insert Schematic >  
| A | B | Out |
| --- | --- | --- |
| 0 | 0 | 0 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 1 |  

**OR Gate**  
< Insert Schematic >  
| A | B | Out |
| --- | --- | --- |
| 0 | 0 | 0 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 1 |

**Inverter Gate**  
< Insert Schematic >  
| A | Out |
| --- | --- |
| 0 | 1 |
| 1 | 0 |

**NAND Gate**  
< Insert Schematic >  
| A | B | Out |
| --- | --- | --- |
| 0 | 0 | 1 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 0 |

**NOR Gate**  
< Insert Schematic >  
| A | B | Out |
| --- | --- | --- |
| 0 | 0 | 1 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 0 | 

**XOR Gate**  
< Insert Schematic >  
| A | B | Out |
| --- | --- | --- |
| 0 | 0 | 0 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 0 |

**XNOR Gate**  
< Insert Schematic >  
| A | B | Out |
| --- | --- | --- |
| 0 | 0 | 1 |
| 0 | 1 | 0 |
| 1 | 0 | 0 |
| 1 | 1 | 1 | 

# Latches and Flip Flops

# Logic Blocks

# Verilog Guide
