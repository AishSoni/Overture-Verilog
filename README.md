# Overture Custom Super Simple Intel 8085 Inspired CPU Architecture
_Overture_, from the French _ouverture_ meaning "opening," represents both a musical introduction that establishes themes to be developed later and a preliminary proposal or initiative.
This project aims to serve as an _introductory platform_ for electronics students who want a real introduction to VLSI design.

## 🧠 Overview
This is project primarily borrows from the Von-Neumann Architecture of CPU design and is more directly inspired by the Intel 8085.

**OVERTURE** is a custom-designed 8-bit microprocessor built for educational, experimental, and embedded applications. It is a modular CPU featuring a classic **fetch-decode-execute instruction cycle**, and supports multiple operational modes via a concise instruction format. Its design is loosely **inspired by the Intel 8085**, with modern simplifications and enhancements for clarity and experimentation.

---

## 🔐 Key Features

### 1. Clock Frequency

* Operates reliably up to **10 KHz**, ideal for FPGA demonstrations and logic simulation environments.

### 2. Instruction Modes

* Supports **four distinct operation modes** based on the first two bits of the 8-bit opcode:

  * `00` – **Immediate Addressing Mode**
  * `01` – **Calculation Mode**
  * `10` – **Memory Copy Mode**
  * `11` – **Conditional Checker Mode**

### 3. Supported Instructions

* Core logic and arithmetic operations:

  * **Logic**: `AND`, `OR`, `NAND`, `NOR`
  * **Arithmetic**: `8-bit ADD`, `8-bit SUB`

### 4. Instruction Format (8 bits)

* Opcode structure:

  ```
  [7:6] Mode Select (2 bits)
  [5:3] Source Register (3 bits)
  [2:0] Destination Register (3 bits)
  ```
* **Register Encoding** includes:

  * **Input**, **Output**
  * **Four Working Registers** (W0–W3)
* Supports register-to-register and immediate-style operations depending on the mode.

### 5. Execution Model

* Fully synchronous operation based on the **Fetch → Decode → Execute** cycle:

  * **Fetch**: Program Counter retrieves instruction from memory.
  * **Decode**: Instruction is parsed by the control unit.
  * **Execute**: ALU and memory units perform actions according to control signals.

### 6. Memory Architecture

* **Program Counter**: 8-bit wide, allowing up to **256 instructions** to be addressed.
* **Address Bus**: 8-bit wide, enabling access to **256 memory locations**.
* **Data Bus**: 8-bit bi-directional, used for transferring instructions, operands, and results.

### 7. Modular Verilog Design

* Each functional block is encapsulated in its own Verilog module:

  * `ALU.v`: Arithmetic/logic operations
  * `DEC.v`: Instruction decoder
  * `COND.v`: Condition checking and flag evaluation
  * `RegisterPlus.v`: General-purpose and special-purpose registers
  * `OVERTURE.v`: Top-level integration and control logic

---

## 🏗️ Architecture at a Glance

### Schematic Diagram
![Schematic](https://github.com/user-attachments/assets/78d69280-af9f-4c1e-82d9-40cda85f0fca)

### Exploded Schematic Diagram
![SchematicExploded](https://github.com/user-attachments/assets/f264c345-d51d-44fa-8b44-ec41b1ffd581)

### Architecture Blocks

| Component               | Functionality                                         |
| ----------------------- | ----------------------------------------------------- |
| **ALU**                 | 8-bit arithmetic and logic operations                 |
| **Register File**       | Four working registers, input/output, program counter |
| **Instruction Decoder** | Converts opcodes to control signals                   |
| **Control Unit**        | Manages fetch-decode-execute cycle                    |
| **Condition Module**    | Enables conditional operations and flag checking      |
| **Memory Interface**    | Uses 8-bit address and data buses                     |

### Fabrication Preview
![vivado_IpGcjiPmjG](https://github.com/user-attachments/assets/46ed6a1a-8713-4580-98c1-dcf5edb0ec09)

---
## 🛠️ Building in Vivado

1. Clone this Github repository and open Vivado.

2. Select File > Open Project and navigate to ``` Overture-Verilog/Overture.xpr ```

3. Run synthesis, implementation, and bitstream generation.

4. Optionally, export to an FPGA board and connect via UART/GPIO for I/O.

## 🛠️ Building in Icarus Verilog

1. Clone this Github repository.
2. Install Icarus Verilog (if not done already).
3. In the ``` Verilog Source ``` folder run the ``` build-OVERTURE-iverilog.cmd ``` file.

---

## ⚙️ Applications & Use Cases

* FPGA-based CPU design projects
* Undergraduate digital design labs
* Custom instruction set experimentation
* Basic embedded system control units

---

## 📘 Notes

While inspired by legacy architectures like the Intel 8085, **OVERTURE** is an original CPU design that emphasizes clarity, simplicity, and modularity. Its instruction set and opcode format are streamlined for educational clarity and rapid prototyping rather than ISA compatibility with legacy microprocessors.
