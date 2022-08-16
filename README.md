# Pipelined CPU using verilog
## Data Path
![k](https://user-images.githubusercontent.com/52776608/170437175-18862eaf-5a3b-4fa9-be5e-cbc5047a44fe.png)
## Supported Instructions
* and rd, rs1, rs2 (bitwise and)
* xor rd, rs1, rs2 (bitwise exclusive or)
* sll rd, rs1, rs2 (shift left logically)
* add rd, rs1, rs2 (addition)
* sub rd, rs1, rs2 (subtraction)
* mul rd, rs1, rs2 (multiplication)
* addi rd, rs1, imm (addition)
* srai rd, rs1, imm (shift right arithmetically)
* lw rd, imm(rs1) (load word)
* sw rs1, imm(rs2) (store word)
* beq rs1, rs2, imm (branch)
