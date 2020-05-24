# LAB3

## R type
- [x] sll
- [x] mul
- [x] jr

## I type
- [ ] lw
- [ ] sw
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



| Type  | OPCODE      | ALUop  | REGdst | ALUSrc | Branch | RegWrite | 對應ALU_ctl |
|:----- |:----------- |:------ | ------ |:------ |:------ |:-------- | ----------- |
| R     | 000000(0)   | 000(0) | 1      | 0      | 0      | 1        | 各func      |
| addi  | 001000(8)   | 001(1) | 1      | 1      | 0      | 1        | ADD:0010    |
| sltiu | 001011(11)  | 010(2) | 0      | 1      | 0      | 1        | SLTiu:0101  |
| beq   | 000100(4)   | 100(4) | 0      | 0      | 1      | 0        | BEQ:0011    |
| lui   | 001111(15)  | 011(3) | 0      | 1      | 0      | 1        | LUi:1011    |
| ori   | 001101(13)  | 111(7) | 0      | 1      | 0      | 1        | OR:0001     |
| lw    | 100011 (35) | 101    |        |        |        |          |             |
| sw    | 101011 (43) | 101    |        |        |        |          |             |
| bne   | 000101(5)   | 110(6) | 0      | 0      | 1      | 0        | BNE:1001    |
