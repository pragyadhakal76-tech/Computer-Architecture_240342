# Lab 3: VHDL Code for Combinational Circuits (Encoder and Decoder)

---

## Objective
- To design and simulate a **4-to-2 priority encoder** using VHDL.
- To design and simulate a **2-to-4 decoder** using VHDL.
- To verify the functionality of both circuits using simulation waveforms.

---

## Theory

### Encoder
An encoder is a combinational circuit that converts **2ⁿ input lines into an n-bit binary code**.

In a **4-to-2 encoder**, there are four inputs (I0–I3) and two outputs (Y1, Y0).  
Only one input is assumed to be active at a time.

A **priority encoder** resolves the case where multiple inputs are HIGH by assigning priority to the highest-order input.

#### Truth Table (Priority Encoder)

| I3 | I2 | I1 | I0 | Y1 | Y0 |
|----|----|----|----|----|----|
| 0  | 0  | 0  | 1  | 0  | 0  |
| 0  | 0  | 1  | X  | 0  | 1  |
| 0  | 1  | X  | X  | 1  | 0  |
| 1  | X  | X  | X  | 1  | 1  |

---

### Decoder
A decoder is a combinational circuit that converts an **n-bit binary input into 2ⁿ output lines**.

In a **2-to-4 decoder**, a 2-bit input (A1, A0) produces four outputs (Y0–Y3), where only one output is HIGH at a time.

#### Truth Table (2-to-4 Decoder)

| A1 | A0 | Y3 | Y2 | Y1 | Y0 |
|----|----|----|----|----|----|
| 0  | 0  | 0  | 0  | 0  | 1  |
| 0  | 1  | 0  | 0  | 1  | 0  |
| 1  | 0  | 0  | 1  | 0  | 0  |
| 1  | 1  | 1  | 0  | 0  | 0  |

---

Example:
- I = 0001 → Y = 00, V = 1  
- I = 0010 → Y = 01, V = 1  
- I = 0100 → Y = 10, V = 1  
- I = 1000 → Y = 11, V = 1  
- I = 1010 → Y = 11, V = 1 (priority applied)  
- I = 0000 → V = 0  

---

Example:
- EN = 1, A = 00 → Y = 0001  
- EN = 1, A = 01 → Y = 0010  
- EN = 1, A = 10 → Y = 0100  
- EN = 1, A = 11 → Y = 1000  
- EN = 0 → Y = 0000  

---

### Discussion
In this lab, a **4-to-2 priority encoder** and a **2-to-4 decoder** were designed using VHDL and verified through simulation. The encoder successfully prioritized the highest active input when multiple inputs were HIGH simultaneously. The decoder correctly activated only one output line based on the binary input and disabled all outputs when enable was LOW.

### Conclusion
The experiment demonstrates the implementation of fundamental combinational circuits using VHDL. The simulation results confirm the correct behavior of both the priority encoder and decoder, validating their truth tables and design logic.

---