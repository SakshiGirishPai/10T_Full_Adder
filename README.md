#  Design and Optimization of a Low-Power, High-Speed Hybrid 10T  Full Adder

This project deals with the construction of a 10-T Full Adder using CMOS Skywater 130nm technology in [xschem](https://xschem.sourceforge.io/stefan/index.html) & obtaining its parameters through pre-layout simulation using [ngspice](https://ngspice.sourceforge.io/).

Note: Circuit requires further optimization to improve performance. Design yet to be modified.

## How it works!
This repository contains the design and implementation of a low-power, 10-transistor (10T) full adder circuit using SkyWater 130nm CMOS technology. The full adder operates at a supply voltage of 1.8V, with logic levels defined as approximately 1V and above for a high logic level (logic 1) and below 1V for a low logic level (logic 0). Full adders are critical components in arithmetic logic units (ALUs), widely used in AI and machine learning hardware for binary addition and data processing tasks. This design aims to achieve efficient performance with a reduced transistor count and low power consumption, making it suitable for applications in AI where energy efficiency and compactness are crucial.

## Truth Table
The truth table for a 1-bit full adder is shown below:

| A | B | Cin | Sum | Cout |
|---|---|-----|-----|------|
| 0 | 0 | 0   | 0   | 0    |
| 0 | 0 | 1   | 1   | 0    |
| 0 | 1 | 0   | 1   | 0    |
| 0 | 1 | 1   | 0   | 1    |
| 1 | 0 | 0   | 1   | 0    |
| 1 | 0 | 1   | 0   | 1    |
| 1 | 1 | 0   | 0   | 1    |
| 1 | 1 | 1   | 1   | 1    |

## Full Adder Boolean Expressions

In this design, we define an intermediate signal **X** as the XOR of inputs **A** and **B**:

- **X**: `X = A ⊕ B`

With **X** defined, the expressions for **Sum** and **Carry-out** (`Cout`) are:

- **Sum**: `Sum = X ⊕ Cin`
- **Carry-out**: `Cout = (A ⋅ X') + (H ⋅ C)`

### Explanation
- `X = A ⊕ B`: This represents the XOR operation of **A** and **B**.
- **Sum** uses **X** XORed with **Cin**.
- **Cout** (or **Carry-out**) is calculated based on the values of **A**, **X'** (the complement of **X**), and an additional term **H** multiplied by **C** as per the modified expression provided.

Here:
- **Sum** produces the final result of the addition.
- **Cout** represents the carry-out output based on the modified expression.

## Block Diagram
![Full Adder](https://images.javatpoint.com/tutorial/digital-electronics/images/full-adder.png)



