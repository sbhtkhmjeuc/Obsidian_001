# Library Systems
Type : #t/Collage-Course 

# Basics of Logic

the basic sentence in a logics called a **Verse**, it’s a sentence that we can attach to him a boolean value of True or False.

<aside>
💡 Not all sentences are verses, but all verses are sentences.

</aside>

## Connective

### Simple & Complex Verses

a verse can be built from a number of verses, this it called **Complex Verse**, this verse usually built from a **Simple Verse** that Can’t be broken down into smaller verses.

the words that connects the simple verses into a bigger one called the **Connective**, 

### “AND” Connective

represents by the word **AND**, and by the symbol `^`, For Example Jerusalem is the capital of Israel (P) **and** today is Monday (Q)→ P ^ Q. 

![“AND” Logical Table](Images/Library%20Systems%201ee6bd66289f451a8bc06243c1fd812d/Untitled.png)

“AND” Logical Table

### “OR” Connective

represents by the word **OR**, and the symbol `∨`.

There’s another option for OR called **XOR** (e**X**clusive **OR**), the two things cat accrue only one but **not both in the same time**, 

### “NOT” Connective

operates only on a single verse,  it’s symbol is `~` ,and it’s action is to switch the value of the verse. 

# The Basics of the Boolean Algebra

## Operations, Expression and Function

most of the people when they say “Boolean Algebra” are meaning “**Algebra of branding**”, the difference is that the Boolean Algebra can get more that 2 boolean values. 

if will preform a table of 1 and 0 in a multiplication in all variations, we will see that it’s the same as the AND boolean table, that why the AND is also called the **Boolean Multiplication**. 

They are different operations that but because of their similarities, they are used as the same symbol.

if we would do the same in the Addition and the OR, we’ll see that they are not much similar like the multiplication and the AND, but the OR is called the **Boolean Addition**,  

the NOT we’ll use the a upper line on the latter, and the symbol is `¬` , this operation called a **Switch**.

### Boolean Expression

the expression is built out of a two boolean symbols and an boolean operation.

the ways of operations in boolean algebra, is like regular algebra from the brackets and outwards, but in case that there are no brackets, the ways is **NOT→ AND →OR**.

### Boolean Functions

Example for an Boolean Function - $f(A,B,C)=Ā*B+C$, for each function there are $2^n$ combinations (n - the number of variables).

another ways that you can write the combinations it’s in a table.

For Example : 

![Screenshot from 2022-05-17 10-34-32.png](Screenshot_from_2022-05-17_10-34-32.png)

## Basic Rules in Boolean Algebra

**Boolean Identification** - is two boolean phrases that are equal for every possible combination.

one way the you can prove if the equality is happening for every possible combination of variables that appear in both sides of the equator, for that you can use a **Truth Table**.

Example :

![An Example that is True, because you can see that the phrase is equal to every time in every possible combination of A & B.](Images/Library%20Systems%201ee6bd66289f451a8bc06243c1fd812d/Untitled%201.png)

An Example that is True, because you can see that the phrase is equal to every time in every possible combination of A & B.

## Boolean rules for one variable

there are couple of rules that works on one variable :

### Multiplication Reversal

this rule says that every time that 

**The result of an AND operation between variable and it’s negative variable will always be 0**.

### Double Negativity

**The negative of a negative variable is the original variable.**

symbol : 

![Untitled](Images/Library%20Systems%201ee6bd66289f451a8bc06243c1fd812d/Untitled%202.png)

### The Double Multiplication & Addition

![Untitled](Images/Library%20Systems%201ee6bd66289f451a8bc06243c1fd812d/Untitled%203.png)

## Operations between Boolean Variable and Boolean Const

### Multiplication by 0 (AND)

AND operation between a boolean variable and 0, will result 0.

### Addition with 0 (OR)

OR operation between a boolean variable and 0, will always result the same boolean value as the boolean variable.

### Single Rules

1. an AND operation on a boolean variable and 1 will result always the value of the boolean variable.
2. an OR operation on a boolean variable and 1 will result always value of 1.
![Untitled](Images/Library%20Systems%201ee6bd66289f451a8bc06243c1fd812d/Untitled%204.png)
## Rules for Number of Variables
### Commutation Rules
in both Boolean Addition and Multiplications, you can switch places and the result will stay the same.
![[Pasted image 20220527125939.png]]
### Association Rules
![[Pasted image 20220527130033.png]]
### Distribution Rules
#### Boolean Multiplication
![[Pasted image 20220527130713.png]]
#### Boolean Addition
![[Pasted image 20220527130721.png]]
## Duality Principle
this means that the you can switch every AND -> OR (and reverse) and the logical value to the opposite and the verse's result will be the same. 
![[Pasted image 20220527131553.png]] --> ![[Pasted image 20220527131613.png]] (also works in **reverse**)
## Absorption Rules
finding a boolean expression, that is like the original but with less variables and operations
### First Rule
![[Pasted image 20220527141756.png]]
**a Missing Step** 

Example :
![[Pasted image 20220527144714.png]]
### Second Rule
it's a Duality to the First rule (above)
![[Pasted image 20220527143751.png]]
### Third Rule
some of the operations based on previous rules
![[Pasted image 20220527143935.png]]
### Fourth Rule
it's a Duality to the Third rule (above)
![[Pasted image 20220527144528.png]]
## De-Morgan Rules 
![[Pasted image 20220527181035.png]]
## XOR, NAND & NOR Operations
### Boolean Functions with one or two and variables
![[Pasted image 20220528140020.png]]
![[Pasted image 20220528140036.png]]
### XOR
uses the `⊕` symbol   
![[Pasted image 20220528153334.png]]
### NAND (Not AND)
![[Pasted image 20220528153805.png]] the negative result of the Multiplication 
![[Pasted image 20220528153628.png]]
### NOR (NOT OR)
![[Pasted image 20220528155024.png]] the negative result of a Boolean Addition 
![[Pasted image 20220528155115.png]]
## NOR & NAND as foundation for full system (permission)
### Small Full Systems 
#### System without the OR gate
![[Pasted image 20220528162616.png]] the OR gate can be changed with the NOT & AND gates.
#### Systems without the AND gate
![[Pasted image 20220528162810.png]] 
OR & NOT can represent also a Full System
#### NAND as a Full Systems
![[Pasted image 20220528164050.png]]
#### NOR as a Full System
![[Pasted image 20220528164154.png]]
![[Pasted image 20220528164215.png]]
