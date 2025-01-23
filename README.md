# Power Electronics Project Documentation

## Overview
This project focuses on the design, modeling, and simulation of a buck converter for power electronics applications. Key areas include Analog Hardware in the Loop (AnHIL) implementation, use of operational amplifiers (AOs), and automated control for stabilized DC voltage sources.

## Table of Contents
1. [Project Design and Specifications](#1-project-design-and-specifications)
   - 1.1 Project Theme
   - 1.2 Conventional Buck Converter Structure
   - 1.3 Design Specifications
   - 1.4 Design Relationships
   - 1.5 Control Frequency Problem

2. [Converter Modeling](#2-converter-modeling)
   - 2.1 Mathematical Modeling
   - 2.2 Equivalent Structural Schematic
   - 2.3 Parasitic Parameter Issues

3. [Simulation of the Buck Converter](#3-simulation-of-the-buck-converter)
   - 3.1 Modeling Principles
   - 3.2 Structural Modeling Schematic
   - 3.3 Instantaneous Value Simulations
   - 3.4 Averaged Value Simulations
   - 3.5 Linear Structure Modeling Challenges

4. [Implementation with Operational Amplifiers](#4-implementation-with-operational-amplifiers)
   - 4.1 Conventional Structure
   - 4.2 Mathematical Model
   - 4.3 Simulation Setup
   - 4.4 Adaptations for Analog Simulations with AOs
   - 4.5 Integrated AO Usage

5. [AnHIL Realization with AOs](#5-anhil-realization-with-aos)
   - 5.1 Realization Principles
   - 5.2 Electrical Schematic
   - 5.3 Simulink Model

6. [Applications: Stabilized DC Voltage Source](#6-applications-stabilized-dc-voltage-source)

7. [Automatic Control for the Buck Converter](#7-automatic-control-for-the-buck-converter)

---

## 1. Project Design and Specifications
### 1.1 Project Theme
Analog Hardware in the Loop (AnHIL) implementation for a buck converter with DC voltage output stabilization.

### 1.2 Conventional Buck Converter Structure
The buck converter is designed to operate in a switching regime, leading to ripple in the output voltage and current. Key relationships for ripple:
```plaintext
∆IL = ILmax - ILmin
∆UO = UOmax - UOmin
```

### 1.3 Design Specifications
- Input Voltage: **E* = 50V**
- Output Voltage: **UO = 15V**
- Switching Frequency: **fc = 30kHz**
- Load Resistance: **RS = 10Ω**

### 1.4 Design Relationships
- Minimum Inductance:
  ```plaintext
  L ≥ (1-μo) ⋅ μo ⋅ E* / (fc ⋅ ∆IL)
  ```
- Minimum Output Capacitance:
  ```plaintext
  C ≥ (∆IL ⋅ μo) / (∆UO ⋅ fc)
  ```

### 1.5 Control Frequency Problem
Higher switching frequencies reduce the size of inductors and capacitors but require transistors capable of operating correctly at such frequencies.

---

## 2. Converter Modeling
### 2.1 Mathematical Modeling
The buck converter's behavior is modeled in ON and OFF states using idealized components.

### 2.2 Equivalent Structural Schematic
Schematic diagrams are developed to represent both states of the converter.

### 2.3 Parasitic Parameter Issues
Parasitic parameters, such as resistance in inductors, slightly modify the behavior of current and voltage. Adjustments in the model address these factors.

---

## 3. Simulation of the Buck Converter
### 3.1 Modeling Principles
Simulations use two strategies:
- Instantaneous values (ripple analysis).
- Averaged values (steady-state analysis).

### 3.2 Structural Modeling Schematic
Both strategies rely on the same schematic.

### 3.3 Instantaneous Value Simulations
Focuses on ripple effects using a square wave input.

### 3.4 Averaged Value Simulations
Uses a step signal input for steady-state operation.

### 3.5 Linear Structure Modeling Challenges
The second-order transfer function is derived from the linear model:
```plaintext
HVTC(s) = ωn² / (s² + 2ζωns + ωn²)
```

---

## 4. Implementation with Operational Amplifiers
### 4.1 Conventional Structure
A simplified buck converter implemented with idealized components.

### 4.2 Mathematical Model
Incorporates parasitic resistance effects.

### 4.3 Simulation Setup
Simulations use realistic values for inductance, capacitance, and resistance.

### 4.4 Adaptations for Analog Simulations with AOs
Modified structures distribute amplification factors to improve precision.

### 4.5 Integrated AO Usage
Operational amplifiers are implemented using precision resistor networks to achieve desired gains.

---

## 5. AnHIL Realization with AOs
### 5.1 Realization Principles
The converter's Simulink model is adapted for physical implementation using operational amplifiers.

### 5.2 Electrical Schematic
A circuit with four operational amplifiers is designed for the implementation.
![image](https://github.com/user-attachments/assets/85a7424a-9642-4139-ad6a-706cbf45d1ed)
### 5.3 Simulink Model
A simulation model is developed to validate the design.
![image](https://github.com/user-attachments/assets/f7fed847-799a-47df-885d-66169f376467)
---

## 6. Applications: Stabilized DC Voltage Source
The buck converter is applied as a stabilized DC voltage source to maintain consistent output under variable input and load conditions.

---

## 7. Automatic Control for the Buck Converter
The system uses feedback control to stabilize the output voltage and minimize ripple, achieving high efficiency in operation.

---

## Tools and Technologies
- MATLAB and Simulink for modeling and simulation.
- Multisim for circuit realization.
- Operational amplifiers for hardware implementation.

