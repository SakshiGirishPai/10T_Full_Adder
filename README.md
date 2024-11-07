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
- **Carry-out**: `Cout = (A ⋅ X') + (X ⋅ C)`

### Explanation
- `X = A ⊕ B`: This represents the XOR operation of **A** and **B**.
- **Sum** uses **X** XORed with **Cin**.
- **Cout** (or **Carry-out**) is calculated based on the values of **A**, **X'** (the complement of **X**), and an additional term **H** multiplied by **C** as per the modified expression provided.

Here:
- **Sum** produces the final result of the addition.
- **Cout** represents the carry-out output based on the modified expression.

## Block Diagram
![Full Adder](https://images.javatpoint.com/tutorial/digital-electronics/images/full-adder.png)

## Implementation
XOR Circuit ![image](https://github.com/user-attachments/assets/a527c8b6-1559-4632-a501-5a41dd5fab88)
## Circuit diagram of Full Adder
![image](https://github.com/user-attachments/assets/28e31888-9e5e-4e40-9b2b-855675e3a203)
## Performance Parameters

| Parameter            | Description                                                                                                     | Min | Average | Max | Unit | Condition             |
|----------------------|-----------------------------------------------------------------------------------------------------------------|-----|---------|-----|------|-----------------------|
| Technology Used      | SkyWater 130nm                                                                                                 | -   | -       | -   | -    | -                     |
| VCC                  | Supply Voltage                                                                                                 | -   | 1.80    | -   | V    | T=-40°C to 125°C     |
| tpHL                 | Propagation Delay High to Low: Delay from input 50% rise to output 50% fall (high-to-low transition)           |     |         |     |      |                       |
| tpLH                 | Propagation Delay Low to High: Delay from input 50% fall to output 50% rise (low-to-high transition)           |     |         |     |      |                       |
| tr                   | Rise time: Time taken for the output to go from 10% to 90% of its final high value                            |     |         |     |      |                       |
| tf                   | Fall Time: Time taken for the output signal to drop from 90% of its high level (VCC) to 10% of its high level |     |         |     |      |                       |
| Vth                  | Threshold Voltage: The minimum gate-to-source voltage (Vgs) required to create a conducting path in MOSFET    |     |         |     |      |                       |
| Cin                  | Input Capacitance: Capacitance seen at each input of the Full Adder                                             |     |         |     |      |                       |
| Voh                  | Output high voltage                                                                                           |     |         |     |      |                       |
| Vol                  | Output low voltage                                                                                            |     |         |     |      |                       |


## Schematic Performance Characteristics
- Plot of input(a,b,cin) vs output(sum,cout)
![image](https://github.com/user-attachments/assets/3f439f41-25a5-43b7-805d-4efd2871a7ed)

## EDA Tools Used & Their Installation

To construct the schematic, I have used **Xschem** and simulated the circuit using **ngspice**. I followed the steps given in [Mr. Rajdeep Mazumder's repository](https://github.com/rajdeep66/edaBundle_whyRD).

### Installation Steps

1. **Install Git**
   Open your terminal and install Git if it is not already installed.

2. **Create a Directory**
   Make a new directory on your Desktop with a name of your choice:

   ```bash
   $ mkdir <name_of_your_choice>
   $ git clone "https://github.com/rajdeep66/edaBundle_whyRD.git"
   $ cd edaBundle_whyRD/
   $ gedit auto.sh
# Paste the copied content into the file and save it.
  ```bash
   $ chmod +x auto.sh
$ ./auto.sh
$ sudo apt update
$ sudo apt -y install yosys
$ cd ~/whyRD_eda_bundle/
$ git clone git://opencircuitdesign.com/open_pdks
$ cd open_pdks
$ ./configure --enable-sky130-pdk
$ sudo make
$ sudo make install
$ cd ..
$ sudo ln -s /usr/local/share/pdk/sky130A/libs.tech/magic/* /usr/local/lib/magic/sys
 $ git clone "https://github.com/SakshiGirishPai/10T_Full_Adder"
   ```

This Markdown file is formatted for GitHub and provides a clear set of installation steps, including the commands in code blocks. Let me know if you'd like any further modifications!

## Acknowledgments

- **Kunal Ghosh** - Director, VSD Corp. Pvt. Ltd.

## Contact Information

- **Sakshi Pai** - Undergraduate Student, KLE Technological  University  
  Email: [sakshipai3008@gmail.com](mailto:sakshipai3008@gmail.com)

- **Kunal Ghosh** - Director, VSD Corp. Pvt. Ltd.  
  Email: [kunalghosh@gmail.com](mailto:kunalghosh@gmail.com)


