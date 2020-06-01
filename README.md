# LAB3

[臺大的網站 對架構選寫有幫助](https://www.ntu.edu.sg/home/smitha/FYP_Gerald/rDatapath.html)

![](https://i.imgur.com/CVK7q3j.png)




## R type
- [x] sll
- [x] mul
- [x] jr

## I type
- [x] lw
- [x] sw
- [x] blez
- [x] bgtz

## J type
- [x] j
- [x] jal

## Bubble Sort
- [ ] Bubble Sort

## Report


| ALU control(4bit) | 功能        |
|:----------------- |:----------- |
| 0000              | AND         |
| 0001              | OR          |
| 1000              | ADD(signed) |
| 0010              | ADD         |
| 1010              | SUB(signed) |
| 0110              | SUB         |
| 0111              | SLT         |
| 0101              | SLTiu       |
| 1100              | NOR         |
| 1110              | SRA         |
| 1111              | SRAV        |
| 1011              | Lui         |
| 0011              | beq         |
| 1101              | SLL         |
| 0100              | MUL         |
| 1001              | bne         |


 


| Decoder :arrow_down: | R-type | addi | sltiu | beq | ori | bne |
|:-------------------- |:------ |:---- |:----- |:--- |:--- |:--- |
| Reg_Write            | 1      | 1    | 1     | 0   | 1   | 0   |
| ALU_op               | 000    | 001  | 010   | 110 | 111 | 110 |
| ALUSrc_o             | 0      | 1    | 1     | 1   | 1   | 0   |
| RegDst_o             | 1      | 0    | 0     | 0   | 0   | 0   |
| Branch_o             | 0      | 0    | 0     | 0   | 0   | 1   |
| mem_wrtie            | 0      | 0    | 0     | 0   | 0   | 0   |
| mem_read             | 0      | 0    | 0     | 0   | 0   | 0   |
| mem_to_reg           | 0      | 0    | 0     | 0   | 0   | 0   |
| jump_o               | 0      | 0    | 0     | 0   | 0   | 0   |
| branch_type(2bit)    | 0      | 0    | 0     | 0   | 0   | 1   |
| jal_o                | 0      | 0    | 0     | 0   | 0   | 0   |

| Decoder :arrow_down: | lw  | sw  | blez | bgtz | jump | jal |
|:-------------------- |:--- |:--- |:---- |:---- |:---- |:--- |
| Reg_Write            | 1   | 0   | 0    | 0    | 0    | 1   |
| ALU_op               | 101 | 101 | 110  | 110  | 000  | 000 |
| ALUSrc_o             | 1   | 1   | 0    | 0    | 0    | 0   |
| RegDst_o             | 0   | 0   | 0    | 0    | 0    | 0   |
| Branch_o             | 0   | 0   | 1    | 1    | 0    | 1   |
| mem_wrtie            | 0   | 1   | 0    | 0    | 0    | 0   |
| mem_read             | 1   | 0   | 0    | 0    | 0    | 0   |
| mem_to_reg           | 1   | 0   | 0    | 0    | 0    | 0   |
| jump_o               | 0   | 0   | 0    | 0    | 1    | 1   |
| branch_type(2bit)    | 0   | 0   | 2    | 3    | 0    | 0   |
| jal_o                | 0   | 0   | 0    | 0    | 0    | 1   |
