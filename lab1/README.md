# Lab 1: Introduction to VHDL Programming and Open-Source Simulation Environment

---

## Objective
- To set up and configure the VHDL development environment (VS Code, GHDL, and GTKWave).
- To understand the fundamental structure and components of a VHDL design.
- To write, simulate, and visualize a basic VHDL program.

---

## Theory

### Introduction to VHDL
VHDL (VHSIC Hardware Description Language) is an IEEE standard language used to model and design digital systems. It allows designers to describe hardware behavior at different abstraction levels, from high-level behavioral models to low-level structural designs.

Unlike traditional programming languages, VHDL represents **parallel hardware execution**, meaning multiple operations can occur simultaneously.

---

### VHDL Structure
A VHDL design consists of three main parts:

- **Library and Packages**
  - Contains predefined data types and functions.
  - Common libraries: `IEEE`, `STD`.

- **Entity**
  - Defines the external interface (inputs and outputs).
  - Acts as the “black box” of the design.

- **Architecture**
  - Describes internal behavior or logic.
  - Defines how outputs are generated from inputs.

---

### Libraries in VHDL
- `std`: Contains basic data types like bit, integer, boolean.
- `IEEE`: Provides advanced types like `std_logic` and `std_logic_vector`.

---

### Data Types
- `std_logic`: Single-bit type with multiple logic states (0, 1, Z, U, etc.).
- `std_logic_vector`: Used for multi-bit signals (buses).
- **Signals**: Internal wires used inside architecture.

---

### VHDL Design Flow
1. Analysis (Compilation)
2. Elaboration
3. Simulation
4. Waveform Visualization (GTKWave)

---

### Toolchain Setup
- **VS Code**: Code editor
- **GHDL**: VHDL compiler and simulator
- **GTKWave**: Waveform viewer

---


>## Discussion

In this lab, the VHDL environment was successfully installed and configured using VS Code, GHDL, and GTKWave. A basic buffer circuit was designed and simulated to understand the complete digital design workflow.

The simulation results confirmed that the buffer works correctly, as the output signal directly follows the input signal. This helped in understanding how VHDL describes real hardware behavior through concurrent execution.

The lab also provided hands-on experience with the VHDL design cycle, including analysis, compilation, and waveform visualization. The main challenge was setting up the toolchain properly, but once configured, the simulation process worked smoothly.

---

## Conclusion

This lab successfully introduced the fundamentals of VHDL programming and simulation. The implementation of a buffer circuit demonstrated the basic structure of VHDL and how digital designs are verified using simulation tools.

Overall, the objectives were achieved, and this lab provided a strong foundation for designing and simulating more complex digital systems in future experiments.