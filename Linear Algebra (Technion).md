 # Linear Algebra (Technion)
Type : #t/Course
Time Created : 2022-05-30 17:55
Last Modified : 2022-05-30 17:55
Subjects: #t/Collage-Course #s/LinearAlgebra
Progress: #p/🟠 
URL: https://www.youtube.com/playlist?list=PL3FE95A15AFC19789
Priority: #i/🟥 

---
# Part 1 
## Groups
`∈` - is in symbol (A∈B - A is in B)

you can make groups be writing manually all of the elements, or you can apply a rule that by logic will set al of the potential elements in it (x | x>7)

`⊂` - is Included in (A⊂B - Every element that is in A is in B)
`⋂` - objects that belong to set A and set B (⬇️)
![[250px-Venn_A_union_B.png]]
`⋃` - objects that belong to set A or set B (All of the objects together)
`Φ` - group without objects
#### Special Groups
`N` - Natural Numbers
`Z` - all the whole numbers (...,-1,0,1,...)
`Q` - Rational numbers (numbers that are result of division between whole number)
`R` - Real Numbers ($\sqrt{2}$) 
## Fields
**Definition** - it's a group that all of the regular math operation (`+`,`*`) are working on like on rational numbers and real numbers.

We can define Fields with 11 rules :
![[Pasted image 20220530195756.png]]

# Part 2
`C` - Complex Numbers

in complex numbers we use `i`, which is $\sqrt{-1}=i$, with that we are able now to represent the squared root of any negative number.

**Complex Number** - i.e. : $a+ib$ (a & both are real numbers)    
`a` - also called the <mark style="background: #FF5582A6;">Real Part</mark> 
`b` - also called the <mark style="background: #FF5582A6;">Imaginary part</mark> 

<mark style="background: #FFF3A3A6;">Two complex numbers are equals only if the Real and Imaginary part are the same.</mark> 
i.e. : $Z_1=a_1+ib_1 = Z_2=a_2+ib_2$
	$a_1 = a_2$
	$b_1=b_2$ 
 
we can represent complex numbers with an Graph, and one of the axis will be the Real numbers axis and the other one will be Imaginary numbers axis, and any point on the space will be a complex number.
### Equality Between Complex Numbers
because we are represented the Complex numbers on a graph, we can say that two complex numbers are equal <mark style="background: #FF5582A6;">if the distance between the (0,0) is equal</mark>.

the absolute value in a complex number is : $|Z|=\sqrt{a^2+b^2}$ 

<mark style="background: #FF5582A6;">Argument</mark> - is the angle between the the line that the complex number makes and the positive X axis.

<mark style="background: #FF5582A6;">Tight Number</mark> - $\bar{Z} = a-ib$ 

# Part 3
<mark style="background: #FF5582A6;">Addition between Complex Numbers</mark> - $Z_1+Z_2=(a_1+a_2)+i(b_1+b_2)$
<mark style="background: #FF5582A6;">Deduction</mark> - $Z_1-Z_2=(a_1-a_2)+i(b_1-b_2)$
<mark style="background: #FF5582A6;">Multiplication</mark> - $Z_1*Z_2=(a_1a_2-b_1b_2)+i(a_1b_2+a_2b_1)$ 
<mark style="background: #FF5582A6;">Division</mark> - $$\frac{Z_1}{Z_2}=\frac{Z_1*\bar{Z_2}}{|Z_2|^2}$$to get rid of the 0 problem, we just multiplying the whole equation by $Z_2$  

# Part 4
## Trigonometric Representation of Complex Numbers
$$r=|Z|$ --> $Z=r(\cos{\theta}+i\sin{\theta})$$   
<mark style="background: #CACFD9A6;">Multiplication</mark> - $Z_1*Z_2=r_1*r_2(\cos({\theta_1+\theta_2})+i\sin({\theta_1+\theta_2}))$ 
	$arg(Z_1Z_2) = arg(Z_1) + arg(Z_2)$
<mark style="background: #CACFD9A6;">Devision</mark> - $$\frac{Z_1}{Z_2}=\frac{r_1}{r_2}(\cos({\theta_1-\theta_2})+i\sin({\theta_1-\theta_2}))\space\space\space\space\space\space\space\space\space Z_2\neq0$$
	$arg(\frac{Z_1}{Z_2}) = arg(Z_1) - arg(Z_2)$ 

<mark style="background: #ABF7F7A6;">Exponentiation</mark> - $$Z^n=r^n(\cos(n\theta)+\sin(n\theta))$$

# Part 5
## Roots from Complex Numbers
Getting the N Root - $$\sqrt[n]{Z}=\sqrt[n]{r}(\cos(\frac{\theta+360K}{n})+i\sin(\frac{\theta+360K}{n}))$$that's because when we are Exponentiation we are multiplying and when awe find root we are dividing.

the `K` is there because when we're Exponentiation we're infect <mark style="background: #FF5582A6;">multiplying the argument</mark>, and when we're trying to get the root we're <mark style="background: #FF5582A6;">dividing the argument</mark>, if we will take an argument and multiply it by 10 (trying to Exponentiate it by the power of 10) and Cos and Sin it, and than we will take the the same initial argument and add to it 360 (basically the same point in the circle) and Cos and Sin it, we will get the same result. 
But but if we will do in the other way, and try to get the root of 3 (Dividing the argument by 10 )  let's take for example 30, the division will give us 10 , and if we will try to add 360 to it which will give us 390 and we'll divide that in 3 will give us 130, and 130 and 10 the Cos and Sin are not the same.

when you are getting the root you need to write the all of the `K`'s that are possible which are from <mark style="background: #ABF7F7A6;">0 --> n-1</mark>, and if you are going again to `N` you will get the same result as 0. (because it's a circle)
#### Unit circle
in the unit circle the equation is and let's say he equal to omega: 

$$\cos(\frac{\theta+360K}{n})+i\sin(\frac{\theta+360K}{n}) = ω$$
but the the `K` are going up every iteration, we know that as we multiplying the the argument it's as we are Exponentiation the result (in our case the `ω`) so from that we can see that 
Example `K=2`: $$\cos(\frac{\theta+360*2}{n})+i\sin(\frac{\theta+360*2}{n}) = ω^2$$
as so on and so on.
# Part 6
**Definition of Matrix** - it's a table of items from a specific field (`F` For Example) (we'll need to use the Complex (`C`), Real (`R`) and Rational (`Q`))

the slang for this is "**Matrix above the F Field**"

a Complex Matrix it's a matrix that has at least one number of complex field. 

The Matrix it's self if represented in Uppercase letters, and it's items in lowercase latter, For Example:
($a_{ij}$ = $i$ -> the number of the row , $j$ -> the number of column)
$$A =\begin{pmatrix}a_{11}&a_{12}&a_{13}\\a_{21}&a_{22}&a_{23}\end{pmatrix}$$
when you want to emphasis the size of the matrix you can write $A_{mn}$, the $m$ is the number of rows, and the $n$ is the number of columns.

you can also write $(A)_{ij} = a_{ij}$ and it will be the same (looks at the matrix $A$ in the place of $ij$ and you'll find the $a_{ij}$)
#### Equality between Matrices
for two matrices to be equal their size has to be the same ($A_{mn}=B_{kr}$), and every item in $A$ is equal to every item in $B$ ($a_{ij}=b_{ij}$).
#### Multiplication in Matrices
##### Between a Matrix and a Scalar
when you are multiplying between a matrix ($A$) and a scalar ($\alpha$) the result will be the matrix $\alpha A$, and every item in the matrix is the same place as before but multiplied by $\alpha$. ($\alpha A= \alpha*a_{ij}$) 

#### Addition an Subtraction in Matrices
<mark style="background: #FF5582A6;">You can only preform Addition and Subtraction on equaled size matrices</mark>
Adding and Subtracting items for the matrices that are from the same place. ($A+B=(a_{ij}+b_{ij})$)     ($A-B=(a_{ij}-b_{ij})$)

**Matrix Transpose** - the row and the columns switched ($A_{mn}=A^t_{nm}$) ($A^t=a_{ji}$)

### Glossary
1. **Squared Matrix** - It's a Matrix that the number of row and columns is the same ($A_{nn}$) 
2. **The Primary Slant** -  can only occur on the Squared Matrix, starched from the left top to the right bottom.
3. **Zero Matrix** - it's a matrix that all of it's items is 0.

# Part 7
### Glossary (Continuation)
4. **The Unit Matrix** - it's Squared Matrix that the primary diagonal line item are equal to one and the other ones are 0.
5. **Transposed Matrix** - represented like that ($A^t$), $A_{m*n} --> A^t_{n*m}$, the rows and columns switched
6. **Symmetrical Matrix** - a squared matrix when $A=A^t$.
7. **Anti-Symmetrical Matrix** - a squared matrix that $A^t=-A$.
($a_{ij}=-a_{ij}$), which is also means that the items in the primary diagonal line must be 0. For Example: $$\begin{pmatrix}0&1&4\\-1&0&7\\-4&-7&0\end{pmatrix}$$
8. **Diagonal Matrix** - it's a Squared matrix that every item that not in the Primary Diagonal Line, is 0.
9. **Scalar Matrix** - it's a matrix that all Diagonal Matric that the primary diagonal line values are the same, you can also say that it's a scalar that has been multiplied with a unit matrix.
10. **Upper Trigonally Matrix** - it's a squared matrix that the lower value below the primary diagonal line are all 0. Example ![[Pasted image 20220606142311.png]]      

11. **Row Vector** - it's a matrix that is just one line $$\begin{pmatrix}1&5&5&8&9\end{pmatrix}$$
12. **Column Vector** - it's a matrix that is only one column $$\begin{pmatrix}1\\5\\9\\3\end{pmatrix}$$    
### Variations of multiplication and Addition (Rules)  
1. $A+B=B+A$
2. $A+(B+C)=(A+B)+C$
3. $A+0=A$
4. $A+(-A)=0$
5. $\alpha (A+B)=\alpha A+ \alpha B$
6. $(\alpha \beta)A=\alpha A +\beta A$
7. $(\alpha \beta) A=\alpha(\beta A)$
8. $(A+B)^t=A^t+B^t$
9. $(A^t)^t=A$
10. $(\alpha A)^t=\alpha*A^t$

### Matrix Multiplication
to multiply two matrices you have that the number of columns of the first will be the same number of row of the other.
that is why I can multiply, **Row vector in a Column vector**, if their item number is the same. when you are preforming a multiplication between Row vector in a Column vector, you need to $a_1b_1+a_2b_2...\space a_nb_n$




# ---
# Official Sentences 
1. $Z\bar{Z} = |Z|^2$ 
2. $Z+\bar{Z}=2Re(Z)$ 
3. $Z-\bar{Z}=2iIm(Z)$ 
4. $|Z_1+Z_2|\neq|Z_1|+|Z_2|$
5. $|Z_1*Z_2|=|Z_1|*|Z_2|$ 
6. $|\frac{Z_1}{Z_2}| = \frac{|Z_1|}{|Z_2|}$
7. 
