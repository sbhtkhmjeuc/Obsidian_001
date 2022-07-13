# Assembly (Yaakov)

Last modified: March 30, 2022 1:11 PM
Priority: Important
Progress: Done
Subject: Programming
URL: https://data.cyber.org.il/assembly/assembly_book.pdf

![Assembly.png](Assembly%20(Yaakov)%20e5eedd371ad949b195b4505bcd1008cb/Assembly.png)

Table of OPCODEs to Commands in 8086 : [coder32 edition | X86 Opcode and Instruction Reference 1.12 (x86asm.net)](http://ref.x86asm.net/coder32.html#xB8)

---

# Intreduction

Assembly if the First Programming Language. In the early days of the computer, when programmers wanted to write a program for a computer they needed to use Binary Code to write it, and it very hard to write a long program with only “1” and “0”. So that is why Assembly was created, to make the programming process a little more fast, and readable by very human.

Nowadays there are a lot of programming languages that are more simple to write on like : C, Java, Python and more... but in the end of the day all of these language are translating into a Machine Code that the computer understands.

![Untitled](Assembly%20(Yaakov)%20e5eedd371ad949b195b4505bcd1008cb/Untitled.png)

---

# Counting Methods & Number Representation

the computer uses different counting number from humans, we use numbers in **Base 10,** that means that there are 10 digits that can represent every number. The computer uses two counting methods **Binary & Hexadecimal**.

## The Binary Method

Binary there are only two digits (1 & 0) that are representing all of the numbers in this method.

![Assembly%20(Yaakov)%20e5eedd371ad949b195b4505bcd1008cb/Untitled%201.png](Assembly%20(Yaakov)%20e5eedd371ad949b195b4505bcd1008cb/Untitled%201.png)

to convert a number from base 10 to base 2 (Binary), you need to take the number and divided it by 2, and store the leftover, and take the outcome and divided this by 2 until you get 0 or a outcome of 0.

![Assembly%20(Yaakov)%20e5eedd371ad949b195b4505bcd1008cb/Untitled%202.png](Assembly%20(Yaakov)%20e5eedd371ad949b195b4505bcd1008cb/Untitled%202.png)

## The Hexadecimal Method

Hexadecimal, in this methods there are 16 digits that can represent numbers in it, the digits are from 0-9 and from A-F. (when you write code in Assembly, the Hex Numbers need to start with “0” at the beginning and finish with “h”)

![Assembly%20(Yaakov)%20e5eedd371ad949b195b4505bcd1008cb/Untitled%203.png](Assembly%20(Yaakov)%20e5eedd371ad949b195b4505bcd1008cb/Untitled%203.png)

to convert a number from decimal to Hex, you need to do the same process like the binary just instead of 2 you divided by 16.

![Assembly%20(Yaakov)%20e5eedd371ad949b195b4505bcd1008cb/Untitled%204.png](Assembly%20(Yaakov)%20e5eedd371ad949b195b4505bcd1008cb/Untitled%204.png)

![Hex to Binary](Assembly%20(Yaakov)%20e5eedd371ad949b195b4505bcd1008cb/Untitled%205.png)

Hex to Binary

## Number Representation

### Arithmetic

- Addition
    - Binary
        
        ![Assembly%20(Yaakov)%20e5eedd371ad949b195b4505bcd1008cb/Untitled%206.png](Assembly%20(Yaakov)%20e5eedd371ad949b195b4505bcd1008cb/Untitled%206.png)
        
    - Hex
        
        ![Assembly%20(Yaakov)%20e5eedd371ad949b195b4505bcd1008cb/Untitled%207.png](Assembly%20(Yaakov)%20e5eedd371ad949b195b4505bcd1008cb/Untitled%207.png)
        
- Subtraction
    - Binary
        
        ![Assembly%20(Yaakov)%20e5eedd371ad949b195b4505bcd1008cb/Untitled%208.png](Assembly%20(Yaakov)%20e5eedd371ad949b195b4505bcd1008cb/Untitled%208.png)
        
    - Hex
        
        ![Assembly%20(Yaakov)%20e5eedd371ad949b195b4505bcd1008cb/Untitled%209.png](Assembly%20(Yaakov)%20e5eedd371ad949b195b4505bcd1008cb/Untitled%209.png)
        
    
- Multiplication
    
    Binary
    
    ![Assembly%20(Yaakov)%20e5eedd371ad949b195b4505bcd1008cb/Untitled%2010.png](Assembly%20(Yaakov)%20e5eedd371ad949b195b4505bcd1008cb/Untitled%2010.png)
    
    ![Assembly%20(Yaakov)%20e5eedd371ad949b195b4505bcd1008cb/Untitled%2011.png](Assembly%20(Yaakov)%20e5eedd371ad949b195b4505bcd1008cb/Untitled%2011.png)
    
- Division
    - Binary
        
        ![Assembly%20(Yaakov)%20e5eedd371ad949b195b4505bcd1008cb/Untitled%2012.png](Assembly%20(Yaakov)%20e5eedd371ad949b195b4505bcd1008cb/Untitled%2012.png)
        
        ![Assembly%20(Yaakov)%20e5eedd371ad949b195b4505bcd1008cb/Untitled%2013.png](Assembly%20(Yaakov)%20e5eedd371ad949b195b4505bcd1008cb/Untitled%2013.png)
        

## Representation by Fixed amount of Bits

in the computer’s Memory there are cells, each cells holds a number (1 or 0). Let’s say that we have a cells with N bits, what is the biggest number that can store inside of it. 

![Table of the biggest number that can be stored of size N.](Assembly%20(Yaakov)%20e5eedd371ad949b195b4505bcd1008cb/Untitled%2014.png)

Table of the biggest number that can be stored of size N.

we can extract a Equation based on this table : $Biggest = 2^n-1$. if we want to represent a bigger number than the biggest number we won’t be able to store it correctly, let’s take for example a cells of size 8, which means that the biggest number that he can store is 255, but if we just add 1 to it, which will be 256, in the memory the number will be : `(1)00000000`, the 1 in the left isn’t in the cells it’s in another separated cells, so by the logic of the computer 255+1 = 0!.

### Representing Negative Numbers

if a number is representing only positive numbers it called **Unsigned**, but if the number can represent both positive and negative number it called **Signed**.

in signed numbers the most left digit represents the sign, whether the number is positive or negative. 0 - Positive | 1 - Negative. but the problem with this representation it is that you can’t preform arithmetic correct with it.

**Ones' complement**

the whole idea behind the Ones' complement is to over come the problem of preforming arithmetic on signed numbers. 

to implement it you just need to take the positive representation of any number and flip the bits, For example the number 7 is `0111` using Ones' complement, -7 will look like `1000` . now we can do arithmetic well and get the right results but there is another problem, 0 in this methods have two representation, `0000` and `1111`.

**Two's complement**

Two's complement meant to overcome the issue of the 0 representation on one’s complement, to use two’s complement you need to flip all the bits just like  one’s complement, but you have to add 1 to the flipped number. For Example the number 6  in 16 but representation (`00000110`), to represent -6 you will need to flip the values (`11111001`) and than add 1 (`11111010`). to check if it all works we will add them together and we should get 0. 

![Untitled](Assembly%20(Yaakov)%20e5eedd371ad949b195b4505bcd1008cb/Untitled%2015.png)

## Assembly Glossery

**Bit** - the smallest unit of info that the computer can hold.

**Nibble** - it’s a collection of 4 bits, nibble can represent 16 different values, in Hex the nibble can represent on digit, this is why he existed. 

**Byte** - it’s a collection of 8 bits, and the smallest unit that has it’s own address. the computer memory is divided into address and each address is jump of one byte. You can see the byte as a two nibbles.

**Word** - it’s a collection of 16 bits, you can refer to it as two bytes or 4 nibbles.

**Double Word** - it’s a collection of 32 bits, can have inside 2 to the power of 32 values.

**ASCII Code** - stands for “American Standard Code for Information Interface”, it’s a table when each number is assigned with a character. 

---

# Computer Organization

the Assembly language works in closest way to the hardware of the computer. we’ll learn about the way that the 80X86 processor family is organized (the “X” represents the generation of the processor).

Couple of things before we are starting to dive into the processor: 

1. the 8086 processor family is oreganized by the **Von Neuman** tecniuce. 
2. all of the processor on the family are in alignment with wach other which means that every code that you write in the first generation will also run on the next generations
3. the 8086 in the good way to start learning the inside of the processors.

## The Von Neuman Machine

in the Von Neuman Architecture (VNA) there are 3 major building blocks: **CPU, Memory & I/O (Input/Output).** 

in the VNA processors, the CPU is doing all of the calculations, all the information adn the instructions for the CPU are located in the Memory, for the CPU and I/O is just like Memory because it can access it  and send/get from them information, the only differance between the Memory and the I/O is that the I/O is from the out world and not he inside of the computer.

the CPU is communicating with the Memory and the I/o using **Bus**, each bus has a differant role. 

![Untitled](Assembly%20(Yaakov)%20e5eedd371ad949b195b4505bcd1008cb/Untitled%2016.png)

### System Buses

the Buses are connection different components in the VNA Machines.

there are 3 main Buses: **Data Bus, Address Bus and Control Bus**. each bus is a collection of electric wires that is moving signals to the components. the signals that are moving through the electric wires are different levels of voltages, there’s a voltage that represents 0 and another one that represents 1. 

- ***Why would we need multiple Buses and not just one?***
    
    let’s take for example a situation that the CPU is send to the Memory “1000h”, the Memory is asking it self: “is it and address or a value?”, the job of the Buses is to give good context for each value that is moving through it. 
    

**Data Bus** - this Bus’s responsibility is to move data between the different components of the computer. The size of this Bus is changing between the different families, usually it has 16/32/64 wires, which indicated on the amount of bits it can move in on time (it also means that the CPU can access 16 bits in every reading / writing of data). 

<aside>
💡 If a Data Bus is 64 (For example) it doesn’t means that it can only read 64 bits of info, it also can read less. The Bus is more wider to save time when there’s need for a lot of data.

</aside>

**Address Bus** - this bus moving info bet ween a known area in the Memory and the CPU. When the Program wants to turn to an address in the memory, she’ll send the address in to Address Bus, electronic components recognize the address and sending back the values or write in the address. The numbers of wires in this Bus representing the space size that the CPU and Access, For example : if there were only 2 wires, the CPU will be able to access 4 address (00,01,10,11), and of the Address Bus have 20 wires, it will be able to access 1,048,576 different addresses.

<aside>
💡 A CPU that have N wires in the Address Bus, will be able to access $2^n$ addresses.

</aside>

**Control Bus** - it’s job is to make order in the way that the CPU communicates with all of the rest components. the Control Bus has 2 wire one for indicate reading and one to indicate writing, when the value in both of them is 1 none of them is working, but if the reading wire is turns into 0 it means that the CPU is now reading and vice versa. 

we said ealier that the Address bus can read one byte of information, it can be allowed with another wire in the Control Bus that called “**Byts Enable**”.

in the 8086 family as the address space is getting largeer by the generation, in the case of the I/O Address, it’s always stayed 16 bits.

## The Memory

we can think on the Memory as a Array of bytes, where that first byte’s address is 0, so for a 2 wires Address Bus the array length is 1,048,576. 

Let’s for example see the way to put “0” in the address 1976:

![Untitled](Assembly%20(Yaakov)%20e5eedd371ad949b195b4505bcd1008cb/Untitled%2017.png)

you can see that all of the 3 Buses are working, the Address bus is having the Address of where to set the value, and Data Bus is having the value that we want to set in the address and the Control Bus is having 0 at the Writing wire to indicate that we want to write in to this address.

the process is veru silimar for reading values from address: 

![Untitled](Assembly%20(Yaakov)%20e5eedd371ad949b195b4505bcd1008cb/Untitled%2018.png)

if I were to put :

AB → 1970

EEFF → 1974

12345678 → 1976

that what the memory would look like : 

![Untitled](Assembly%20(Yaakov)%20e5eedd371ad949b195b4505bcd1008cb/Untitled%2019.png)

you can see that when you put a value grater than byte in the memory it’ll slip to the nest byte, and to the next on after that, until it’ll put the entier way in the memory. You can also read the memory as a byte , word or double word and the computer will know how much to go and where to stop.

<aside>
💡 There is always something in the memory (NULL), it’s never empty.

</aside>

### Segments

to access the memory the CPU is using a 16-bits units called **“Registers”**. Each Register can hold Address space from 0 - 65,535. So now there’s a problem, the size of the registers is 16-bits and the memory is a alot bigger than this, so the solution for this problem is to devied all the memory into **Segments** and **Offset**, that ways each bytes is the memory can be accessed by segment number and offset number. Usullay it written like that : **`Segment:Offset`**

in the 8086 family to access a place in the memory you neede to use two registers, the first one hold the start of the segment in the memory, and the other holds the offset for the start of the segment.

***The Max size of the offset is determines the max size of the segment.*** by the logic, we said that the register can hld up to 65,535 different address, because we use registers to hold the value of the offset we can’t hold more than 65,535 address in the register.

to figure out the location of the segment, multiply the segment by 16, which let’s every segment start with an address that is a multiplecation of 16, For example : segment 0002h is starting (2*16=32) 32 bytes after the start of the memory.

to go to `3DD6h:0012h` the calculation was 3DD60h + 0012h = 3DD72h

### CPU

**Registers**

are special unit is memory, they are not part of the memory but they are part of the CPU (right inside of the CPU), instead of waiting for the data the CPU isn;t waiting at all (this is called Zero Wait).

![Untitled](Assembly%20(Yaakov)%20e5eedd371ad949b195b4505bcd1008cb/Untitled%2020.png)

each register has **High & Low**, each of the part of the registers can be accessed separately, `mov al,56h` ,each one called be the first letter and the l or H. 

![Untitled](Assembly%20(Yaakov)%20e5eedd371ad949b195b4505bcd1008cb/Untitled%2021.png)

### Segment Registers

there are 4 special registers with unique jobs : **CS,DS,SS & ES.** Each one is 16-bits and their jobs are to allow choise of segments in the memory. 

**CS - Code Segment**

this segement contains the machine commands that are being execites by the CPU. You can have the CS point to multiple address in the memory to exceute defferent code but usually this dosen’t nesecerry.

**DS - Data Segment**

points on the location in the memory where all the global veriables are.

**SS - Stack Segment** 

points on the start of the location in the memory that is the Stack.

ES - Extra Segment 

points to location and creates another segment, for extra usage.

### Special Purpose Registers

**IP** - Instruction Pointer, points for the next command to execute in the CS.

Flags - all of the flags are in a register, the flags are 1-bits fields, these are changing in by the Arithmetic, using with control on the program. 

### Arithmetic & Logical Unit (ALU)

this unit is where most of the activity take place, the ALU takes all the data he needs from the registers, the Control unit says what to do and the ALU does it and saves the solution in the selected registers. 

### Control Unit

The first computers had a panel with line of electric circuits that can be changed, by changing them you can determine the command that the CPU will do. 

the Control Unit brings the Commands from the machine commands, that also known as **Operational Code** or **OPCODE**, and copying them one by one to identification. 

to bring command to the OPCODE, the control unit uses the IP, when the Control unit 

### System Clock

in the VNA, the commands are executed one by one, because is they were to execute in the same time it’s cery difficult to predict what will be the out come of the commands, that is why the commands are executing one by one. But there is another problem the timing of the commands, for the command to be executed one by one the CPU need a mechanism that will the exeuction of the commands, for this the System clock was invented, it’s electronic wire on the contril bus that changes it’s value between 1 and 0, the frequency that the clock changes values is the **System Clock Frequency**. **Clock Cycle** is the time that is takes for a value to change and return, the Clock Cycle will be $1/System Cloack Frequency$.

to ensure sync, the CPU will start to do something when the clock is changing it’s value, because all of the tasks of the CPu are sync be the system clock, a task can not be less than one Clock Cycle. 

![Untitled](Assembly%20(Yaakov)%20e5eedd371ad949b195b4505bcd1008cb/Untitled%2022.png)

For example : 

![Untitled](Assembly%20(Yaakov)%20e5eedd371ad949b195b4505bcd1008cb/Untitled%2023.png)

---

# Working with Assembly

There will be Two Explenation for this code :

![Untitled](Assembly%20(Yaakov)%20e5eedd371ad949b195b4505bcd1008cb/Untitled%2024.png)

### The Simple Explanation

`DATASEG` - (Data Segment), is the segment where all of the global variables getting defined. The data Segment not spouse to have Code in it.

`CODESEG` - (Code Segment), is it where the code lives.

### The Detailed Explanation

`MODEL SMALL` - this code model determines that the code will have three segments : Code, Data & Stack, And the size of each of them will be 64K.

`STACK 100h` - the size of the stack.

`start` - the lebal that indicates to the processor from where to start the running of the code.

`@data` - returns the address of the Data Segment. 

`exit` - Exiting from the program, after the `exit` command, there will be another two command, those are there for exiting and relesing all of the useg space in the memroy.

`END start`- the `END` is to tell the Assembler to stop compiling after this word, The `start` is tell from where we want the program to begin from (if nothing is written, the program will start from the EXE file.)

---

# IP Register & Flags

## IP - Instruction Pointer

this register holds the address of the next command to execute, it’s a 16-bit that is operates like a pointer into the CS.

Let’s see how the IP Register works : in our code we run two commands, First `mov ax, 1234h` , and the Second `mov bx, 0` . When we are running those commands the IP should move along with the code, before we are executing the firsst line the IP is `0005h`, but after we are executing the first line the ip in now `0008h` what becuase the command in the `mov` command is taking 3 bytes, not all of the commands are taking 3 bytes. 

## Flags - Processor Status Register

![The Flags](Assembly%20(Yaakov)%20e5eedd371ad949b195b4505bcd1008cb/Untitled%2025.png)

The Flags

There are 4 condition flags : **Zero, Overflow, Carry and Sign.**

### Zero Flag

the zero flags will turn on (1), only if the last command made the destination operand be 0. 

### Overflow Flag

the overflow will turn on (1), when the result of the command overflows from the boundaries. 

For example : in a 8-bit Signed veriable the number that stores need to be within +127 and -128.

### Carry Flag

 the carry flag will turn on (1), if the result of the last command can’t be within the range how much the bits in the veriable can handle. 

For example : 

`mov al, 0C8h
mov ah, 64h
add al, ah`

this code is adding 200 to 100 (decimal), and wants to contain them in 8-bit register, this will turn the Carry flag on because a 8-bit register can hold up to value of 255, and the result is 300 which is s carry but not over flow because the all of the 300 is being stored in AX (becuase it able to do that). 

### Sign Flag

the sign flag will turn on, when the MSB (the most left bit) is turned on (1).

### Direction Flag

when the DF in on the program will move through the address in the string from higher to lower (when it’s off, the program will move through from lower to higher).

### Interrupt Flag

### Trace Flag

this flag puts the processor into a Trace mode

### Parity Flag

this flag is turned on if the number of 1 in the destination register is even.

### Auxiliary Flag

---

# Define Variables & MOV Command

## Defining Variables

in Assembly, we defining veriables in the Data Segment. You can manually define the DS (To avoid Problems), because of we won’t define the DS, the program will choose any random segemnt, and when refering to any variable the offsetwill be fine but the segment not which lead to garbage values. 

## Allocating Space in the Memory

when we define a varibale, it always will be in the DS. To define a veriable you type : `ByteVarName db ?`, first we start with the name of the variable, when we specifing the size of the variable (in our case the size is byte (db - Define Byte)), and the question mark that we alloacted one byte but didn’t put inside nothing.

db - Define byte (8)

dw - Define word (16)

dd -Define Double Word (32)

## Signed & Unsigned

the usage in signed or unsigned number are in the user point of view, Let’s take for example -120 and +136, but represents as 88h, let’s take +120 and do two things, first add -120 which is giving us 0, but when we are adding also +136 it also giving us 0 (this is 0, because we overflowed the space in the disk the actual result is 100h but because the space is only one byte, the space is only going to get 00h which is 0).

## Defining Starting Values to Variables

![Untitled](Assembly%20(Yaakov)%20e5eedd371ad949b195b4505bcd1008cb/Untitled%2026.png)

and the memory is looks like : 

![Untitled](Assembly%20(Yaakov)%20e5eedd371ad949b195b4505bcd1008cb/Untitled%2027.png)

### Defining Arrays

`ArrayName SizeOfElement N dup (?)` - first is the name of the array, Second is the size of each element is=n the array (db), Third number of elements (6), Fourth what the initial value inside each element (dup - Duplicate). 

## MOV Command

![All the moves that you can do with MOV](Assembly%20(Yaakov)%20e5eedd371ad949b195b4505bcd1008cb/Untitled%2028.png)

All the moves that you can do with MOV

using `[]` indicates that the program talking about the memory address of what inside.

not all registers are valid when trying to use MOV command with memory, usually you can use BX,SI and DI. Let’s define a few rules for using Memory in MOV :

1. use BX to store the address, don’t use the address in the command diraclly. `mov ax, [bx]`
2. if you wan to go to address that stored in a fixed offset from the segment that stored in BX add the offset to BX. `mov ax, [bx+2]`
3. if you want to go to address in a changinf offset from the address that stored in BX, add to is another register (DI | SI). `mov ax, [bx+si]`
4. you can also add a number to `mov ax, [bx+si]` but Never not another register.

## Translating Operand to Memory Address

`mov [1], ax` - becuse only the number is in the address, the computer thinks that the segment is the DS. If you want to change the segment, you need to specifiy this (can also use the ES (Extra Segment)).

## Little & Big Endian

those are two methods of storing values inside of the memory, 

First, Big endian, the byte in the high order (AH | BH) is stored in lower memory address (First in the Memory, becasue the memory is going from lower to higher address)

Second, the Little endian which means the opposite of the Big Endian, the lower byte (AL | BL) is being stored in the lower address in the memory (means first)

Our Assembler use the Little Endian Method

## Copying From / To Arrays

`mov al,[Array+2]` - copying to AL the third element in the array.

to copy to the array you just flip the destinations and the source.

### Offset Command

to get the offest of the array from the start of the segment, you use `offset` . For Example, `mov bx, offset Array` , this command gives the offset to BX, which means that you can now use `[bx]` as some kind of pointer into the start of the array.

### LEA Command

stands for Load Effective Address, does tha same as `offset` command.

### word ptr  | byte ptr

let’s take for example an array of bytes, and we preform : `mov ax, [Array+2]` , now we have a problem the register can store a word, but the elements in the array are in size byte, this will bring us an error. To fix this you need to type : `mov ax, [word ptr Array+2]` , this will able to the MOV Command to preform this and copy word object into a word size register.

### Type override Error

if we are telling to the program : `mov [bx], 5` , the assembler will return us an error because doesn’t know how much space to allocate to this variable, for this you can use the ptr’s above : `mov [byte ptr bx], 5`

### Changing the code mid-running

you can do that with changing the segment that the program stores values, to CS and store OPCODE in the memory that the program will execute.

 `mov [cs:1], al`

---

# Arithmetic, logical commands and sliding commands

## Arithmetic

![All of the Arithmetic in Assembly](Assembly%20(Yaakov)%20e5eedd371ad949b195b4505bcd1008cb/Untitled%2029.png)

All of the Arithmetic in Assembly

### ADD

![Untitled](Assembly%20(Yaakov)%20e5eedd371ad949b195b4505bcd1008cb/Untitled%2030.png)

### SUB

![Untitled](Assembly%20(Yaakov)%20e5eedd371ad949b195b4505bcd1008cb/Untitled%2031.png)

### INC / DEC

![Untitled](Assembly%20(Yaakov)%20e5eedd371ad949b195b4505bcd1008cb/Untitled%2032.png)

### MUL / IMUL

stand for M**ultiply,** if you multiply two 8-bit variables, the result can be 16-bits. Also with 16-bit, when you multiple them together, the result can be 32-bit. For this the assembly know where to store all of the excess. 

![Untitled](Assembly%20(Yaakov)%20e5eedd371ad949b195b4505bcd1008cb/Untitled%2033.png)

MUL - Does Operations on **Unsigned** Numbers.

IMUL - Does Operations on **Signed** Numbers. ****

### DIV / IDIV

the same with devotion:

![Untitled](Assembly%20(Yaakov)%20e5eedd371ad949b195b4505bcd1008cb/Untitled%2034.png)

DIV - Does Operations on **Unsigned** Numbers.

IDIV - Does Operations on **Signed** Numbers.

### NEG

![Untitled](Assembly%20(Yaakov)%20e5eedd371ad949b195b4505bcd1008cb/Untitled%2035.png)

## Logical Commands

![Untitled](Assembly%20(Yaakov)%20e5eedd371ad949b195b4505bcd1008cb/Untitled%2036.png)

### AND

![Untitled](Assembly%20(Yaakov)%20e5eedd371ad949b195b4505bcd1008cb/Untitled%2037.png)

### OR

![Untitled](Assembly%20(Yaakov)%20e5eedd371ad949b195b4505bcd1008cb/Untitled%2038.png)

### XOR

![Untitled](Assembly%20(Yaakov)%20e5eedd371ad949b195b4505bcd1008cb/Untitled%2039.png)

### NOT

![Untitled](Assembly%20(Yaakov)%20e5eedd371ad949b195b4505bcd1008cb/Untitled%2040.png)

## Shifting Commands

usage in shifts :

1. Preforming a multiplication or division in number in power of 2.
2. Encrypting Data ([Linear-feedback shift register - Wikipedia](https://en.wikipedia.org/wiki/Linear_feedback_shift_register))
3. Compression or Decompression of info.
4. Graphics ([Lempel–Ziv–Welch - Wikipedia](https://en.wikipedia.org/wiki/Lempel%E2%80%93Ziv%E2%80%93Welch))

### SHL

**Shift Left**, on every time the bits are moving one to the left, and to fill the space a 0 coming from the right side.

![Untitled](Assembly%20(Yaakov)%20e5eedd371ad949b195b4505bcd1008cb/Untitled%2041.png)

### SHR

**Shifts Right**, on every time the bits are moving on to the right, and a 0 coming to fill up the spot from left.

![Untitled](Assembly%20(Yaakov)%20e5eedd371ad949b195b4505bcd1008cb/Untitled%2042.png)

---

# Control Commands

## JMP

this command is with out a condition, it just sends the CPU to another point in the program, Usually the JMP gets and address in the memory (inside the CODESEG), after the JMP command the the copied address will be pasted in the IP register and the running of the code will start from there.

### Near & Far jumps

Near jump, is when you jump inside of the segment (giving the JMP command only offset), and a Far jump is when the address is in different segment (the JMP command gets `segment:offset`)

### Labels

when we use the JMP Command like we said before, we can give it address, but it’s a problem, because every time that the program will start again, the addresses of the CS or the DS won't be the same every time, which will make working with address harder. For this we can use **Labels**, with labels we can call to a line in the program (another address) instead of using it’ address.

## CMP

CMP is just like SUB, it changes the flags but don’t change the values if the registers.

![Untitled](Assembly%20(Yaakov)%20e5eedd371ad949b195b4505bcd1008cb/Untitled%2043.png)

the CMP commands doesn’t tell us if one is bigger or smaller than the other, we need to know that from looking at the flags.

![Untitled](Assembly%20(Yaakov)%20e5eedd371ad949b195b4505bcd1008cb/Untitled%2044.png)

For example, we can see that the MOV command doesn’t change the flags., But the CMP does, and we can see the when we are compering AL to 3h, the ZF (Zero Flag) is turning on, which indicated that the value inside the AL register is 3h. 

But went we are doing CMP with a smaller number, all of the relevant flags are turning off, and when we are doing CMP with a bigger number, the CF and SF flags are turned on. 

## Conditional Jump

are builds with the **IF → Than**.

![Untitled](Assembly%20(Yaakov)%20e5eedd371ad949b195b4505bcd1008cb/Untitled%2045.png)

## LOOP

the LOOP Command is lowering the value of CX and equals CX to 0.

`loop SomeLabel` - will check cx isn’t 0 than it will decrement it and move to the next line.

## Jumping Outside of the Range

the OPCODE of the JMP command, give to an address range of 16 byte. But for loop commands and Conditional Jumps the OPCODE only gives 8 bytes of address range.

you fix that by using conditional jump that are not overflowing from the address range.

---

# Stack & Functions

## Stack

is a segment in the memory, the usage of the stack is to store Const, Variables and address for a short time.

![Untitled](Assembly%20(Yaakov)%20e5eedd371ad949b195b4505bcd1008cb/Untitled%2046.png)

 to define a stack you need to type `STACK Xh` (X Representing the size of the stack is byte)

There are 2 registers that are related to the stack **SS** (Stack Segment) **& SP** (Stack Pointer)**.**

the initial address of the SP is the size of the stack, although that stack isn’t getting to there, the range is one less, which means that SP is going into lower address as more values are added into the stack. 

### Push

you can push variables into the stack. 

the Push Command is always is lowering the SP by 2, which means that you can push only word (2 bytes) variables into it, every other variable size will lead to an error.

### POP

the opposite of Push Command, it will pop out the last value that was pushed into the stack. (it will add SP by 2)

## Functions

a function have one entry and mostly one exit.

to Build a function you need to type in start of the CODESEG:

`proc FunctionName`

`;function code;`

`ret`

`endp FunctionName`

### Call & RET

to call to your function you need to type in the CODESEG, `call FuctionName`, because we are calling to the function which the code to it sits in other address in the memory, the IP register is now “points” on the start line of the function. 

![Untitled](Assembly%20(Yaakov)%20e5eedd371ad949b195b4505bcd1008cb/Untitled%2047.png)

### Near & Far

Near it’s when the function is in the code segment so the address that is in being stored in the stack will be only the offset (because the program knows the segment already) and the SP is moving by 2 , and Far it’s when the function is in other segment, because it’s in another segment we need to specify so the program is storing both the offset and the segment in the stack which is lowering the SP by 4 . To set the far on near, you need to type `near` or `far` in the end of the call command of the function. 

when we use `FAR`, the assembler is adding a command, `push cs`, which is the segment which the program is located.  

## Usage Stack to save program status

when we have nested loops, the counter for both of them is going to be CX, we need some how to get them both there own values, because if we don’t the loops will run forever.  So the way to solve that is to store the value of CX in the stack before going to the next loop and pop it up after the loop is over. 

## Move Parameters to the Function

There are many ways to move parameters :

1. Using Registers - the easiest one, before the program is starting just move the values that you want to the registers that you want, and inside the function use them. 
2. Using the Variable in the DS - you can set a variable instead of a register, you hold the value that you want, the Pros in this method is the you can hold a lot bigger numbers than you would be able in a register. 
3. Through the Stack - there are two ways to use the stack, P**ass By Value and Pass By Reference.** 
    
    **Pass By Value** - the value of the parameter is being copied to the stack, because the stack is unrelated to the original place of the value it can’t change it. 
    
    to access the value in the stack you can use the BP register, and the ways that you are putting the values in the stack.
    
     **Pass By Reference** - you can pus the offset of the variable into the stack, that way the program can access the parameter directly and edit it. (if the variable)
    

## Working with BP

BP (Base Pointer), is a pointer to a cells in the stack and don’t move unlike the SP (Stack pointer) that is moving every time that we are making a push / pop command. We can use that attribute of BP to know exactly where all the values that we kept in the stack relative to the BP. 

To use the BP right, we need to type  in the first of every function : `push bp` and after that, `mov bp,sp`. the commands is allowing us to store the value of BP, and then store inside of BP the SP value. (just like in the picture)

![Untitled](Assembly%20(Yaakov)%20e5eedd371ad949b195b4505bcd1008cb/Untitled%2048.png)

`ret 6` - ret is the opposite of `call` command, it’s poping out the address from the stack and jumps to this address to continue the program. The 6 near the `ret` is to “free” the space of the stack that we used in the program to further usage.

## Extension - Using the stack to define Local Variables in the function

Local Variable - is a variable that is used only in the function, the function allocating it and needs to “free” it. 

To do that you need to lower the the value if SP (`sub sp,6`), and to reverse it you need to add to the value of SP what has been reduced from it (`add sp,6`). Before you are setting local variables, you need to make sure that the BP is set. 

## Moving an Array through a Stack.

You can use the **Pass By Reference**, to the start of the array (because the cells in the array are in the same block of memory, so you can the first cells and add  to it to move through out all of the array)

## Extension - Stack Overflow

**Buffer Overflow** - when you are trying so set more values than you can, in an array. 

For Example : let’s take a function that is getting a name from the user, and stores it in a buffer of 10 bytes, and by our program after the buffer there are the BP value and the IP value. Now if the user typed a name with 14 characters, the input will cross over the BP Value and the IP Value, which is going to force BP and IP to take incorrect values and give unexpected output. 

## Extension - Calling Conventions

Convention - Agreed Action. Let’s for example a function in C, the definition of the program is : `int MyProc (int a, int b)` , this is the **Callee,** and in the program when we want to call the function we can write, `int c = MyProc(1,2)`. There are Convention that needs to be between the Callee and the Caller like the ways to read the parameters, where to “Free” the allocated space, returning a value from the function and more...

### Popular Convention

[https://en.wikibooks.org/wiki/X86_Disassembly/Calling_Conventions](https://en.wikibooks.org/wiki/X86_Disassembly/Calling_Conventions)

![Untitled](Assembly%20(Yaakov)%20e5eedd371ad949b195b4505bcd1008cb/Untitled%2049.png)

The advantage of  CDECL over the STDCALL :

that’s you can send function an Unknown numbers of parameters, because the Caller is in charge on the cleaning of the stack, which means that the Caller is updating the SP, because he knows how much parameters he has moved to the function, Unlike the Callee, which can’t intent the cleaning because the numbers of parameters isn’t known upfront.

The advantage of STDCALL over the CDECL :

when the number of parameters are know upfront, the function can clean the stack by using the `ret` command with a constant, which means that we are did the same thing with one less command.  

# Interruptions

It’s a signal that the CPU is getting, which allows to change the order of the commands in the program. Let’s Take For Example a Game, we need a mechanism that know which key the user is clicking on and what do to in the program.

There are 3 kinds of interruptions : 

- **Traps** - also **Software Interruptions**, these are Initiated by the programmer.
- **Exceptions** - these are like traps but accrues automatic for a response to s problem. For Example :  Division by 0.
- **Interrupts** - these are a result of of external hardware (Mouse, Keyboard and more), these are informing to the CPU that there’s a external event that needs taking care of, the CPU stops the code that is running and takes care of these interruptions and than return to the code.

Calling an Interruption, use the `int` command, after the command needs to come a number, which is the number of the interruption.

![Untitled](Assembly%20(Yaakov)%20e5eedd371ad949b195b4505bcd1008cb/Untitled%2050.png)

Each Interruption, operates a special code for take care of it, this code is changing between each interruption, this code calls **ISR** (Interrupt Service Routine). When the CPU is taking care of an interruption it’s stops the operation of the program, going to the ISR that located in the computers memory, and than returns to the program that was stopped.

## Interruption Stages

1. the CPU is finish to run the current command.
2. the CPU saves the flags current status in the stack, and the address of the next command to run after the interruption.
3. before getting started with the ISR the CPU cleans the IF (interruption flag) and the Trap Flag. 
4. the CPU calculates the ISR Address and copying it to the registers IP & CS and restarts them to value 0. (The calculation of the ISR will be further ahead)
5. the CPU Operates the ISR
6. in the end of the ISR, the CPU gets out of the stack the values that were pushed on to it. and recovers the flags values
7. The CPU continues to run from CS:IP

### The Restart to the IP and TP Flags

The restart of the TP is for the command to run with out any stops, also if we are in the debagger. If weren't stop the stops, the program will stop every 55Miliseconds to update the time, and than to run the program again we will need to type F7, which is an interruption by it’s self, and the program will never going to hit the end.

the restart of the IP flag, is prevention from other interruptions to get in the ways of the running interruption, This happens to prevent from the program to stop let the current interruption to finish running.    

# Tools for Projects

You need to pick a game, like a game “Snake” or “Pong”.

## How to work with files

### Opening a file

to open a file, which you can do with a DOS interruption, `AH = 3Dh` and in `AL` you need to set :

- 0 - reading only
- 1 - writing only
- 2 - reading & writing

`DS:dx` - points on the file’s name.

The name of the file needs to end with ‘0’, For Example `Filename db ‘file.txt’,0` . After that the FileHandle will be inside of `AX` , if there was an error the CF Flags will turn on. the Values that can be inside `AX` :

- 2 - the file not found
- 5 - too many open flies
- 12 - there’s no permission to open the file

### Reading from a file

To read from a file, `AH = 3Fh`, the parameters that we need to send:

- BX - File-Handle that we got from DOS, in the opening phase.
- CX - the number of bytes that you want to read.
- DX - pointer on the buffer (array) that the info will be copied to.

the size of the array, has to be Bigger than or Equal to the number of bytes that you want to be copied.

when you exit the code AX will hold the number of bytes that were read, or an Error Code if there was a problem. 

### Writing to a file

Writing it’s just like Reading, but the other way around, `AH = 40h` , the parameters :

- BX - File-Handle the we got from the DOS.
- CX - the number of bytes that you want to writing to. (if `CX = 0` all the info un the file will be deleted)
- DX - point on the buffer, that the info will be copied from.

in the end the AX will hold the number of bytes that were copied to the file, or an Error Code if there were any problem. 

### Closing a file

interruption 21h with the code `AH = 3Eh`, the only parameter is BX - with the File-Handle that we got from DOS in the beginning. 

### Another Command for Files

`AH = 3Ch` - Creating a new File

`AH = 41h` - Deleting a File

`AH = 42h` - moving the Crouser inside the File.

## Graphics

There’s a location on the I/O memory that stores all the info that represents in the screen that calls “**Video Memory**” and he is connected to the Graphics Card. the Video Memory is between the addresses: `A000:0000` → `B000:FFFF` . 

The Graphic Card can work in two stages : 

- **Text -** in this stage we are determining to the screen that he need to read info from the Video Memory from `B800:0000` and he’s size is 4069 bytes, in this stage the graphics card prints 25 lines times 80 columns of ASCII values.
- **Graphic -**  in this we are determining to he graphic card to read info from `A000:0000`, and his size is 65,536 bytes, in this stage the graphics card prints 200 line time 320 columns of pixels.

You can break the displaying process into three stages :

1. setting the stage of the graphics card (the default is Text Mode)
2. Translating our graphics into bits that the graphics card understand.
3. copying the bits into the right place in side the Video Memory, you can do that by number of ways :
    1. You can copy the information straight into the Video Memory, it’s the faster way but you need to calculate the address that you need to approch.
    2. You can call an BIOS interruption.
    3. You can use an DOS Interruption. 

### Graphics in Text Mode

The First Step - Text Mode is a Default for the graphics card, but if you want to switch to it, you need to use the 10h interruption and set `AH = 0h` and `AL = 2h` . 

There are number of ways that you can do the Second and Third steps:

**ASCII String** - a file that is a long string of ASCII Characters,

![Untitled](Assembly%20(Yaakov)%20e5eedd371ad949b195b4505bcd1008cb/Untitled%2051.png)

and to display this string, use the `21h` interruption and `AH = 9h`. To Convert any image to an ASCII characters you can use ”image to ASCII Convert” in google. 

### Graphics in Graphic Mode

in graphic mode we work with pixels, and **VGA** (Video Graphics Array), you can read [Video Graphics Array - Wikipedia](https://en.wikipedia.org/wiki/Video_Graphics_Array). 

VGA Format is supports number of resolutions, but we’ll use the 320X200. 

To move the graphics card into graphic mode you need to use the `10h` interruption and `AX = 13h`. inside the area that starts with `A000:0000` all the info about displaying an image is.

For each pixel we need to know 2 things, his **Position & Color.**

The position of the pixel on the screen determines by location on in the memory. To go to pixel in the Y line you need to multiply Y by 320 and add the X column to reach the pixel that you want.

 The Color is getting determines by a Palate Table, the number is a 8 byte color that gets translated using this color palette.

Sometimes we have got an image that has 2 colors that are very similar to each other, The program will let some of the colors go to replace them with colors that are in the image. 

**Printing a pixel**

The first things to do is to calculate the Coordination of the pixel, we can do it manually or using a BIOS interruption, the interruption need to `AH = 0Ch`, and need the parameters :

- AL - Color
- BL - Page
- CX - X Coordination
- DX - Y Coordination

**Reading the Color Value form the Screen**

the BIOS interruption allows us also to read the color values from the screen, with `AH = 0Dh` (Can be useful in “Snake”)

**Drawing Line and Rectangles**

if you want to know how to draw Circles read [Bresenham's line algorithm - Wikipedia](https://en.wikipedia.org/wiki/Bresenham%27s_line_algorithm)

**Reading an image in Format BMP**