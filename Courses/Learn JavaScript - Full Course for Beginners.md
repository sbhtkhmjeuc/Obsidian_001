# Learn JavaScript - Full Course for Beginners

Last modified: March 7, 2022 2:52 PM
Priority: Not important
Progress: Done
Subject: Programming
URL: https://www.youtube.com/watch?v=PkZNo7MFNFg&ab_channel=freeCodeCamp.org

# Comments

in Java Script to make a comment is `//`. (they won’t run with the code). `/* dsdsdv */`, Multi-line Comment. 

# Data type and Variables

Undefined, Null, Boolean, String, Symbol, Number and Object. To Set a Veritable you’ll need to use `var`, For Example : `var myName = "Daniel"`. You can also set a variable with `let`, but this way the variable will be set only in the Sculpt of where you defined it. You can also use `const`, it’s just like `var` but it can’t change throughout the program. 

# Storing Values with the Assignment Operators.

You can Declare an Variable : `var a;`, and you can also assign Value to it right in the declaration like that : `var b = 8;`. If you declared a variable and than wanted to assign a number to it you won’t need to re-declare it you just need to assign a value : `a = 9;`.

`console.log()` - shows you want you want in the console.

JavaScript is a Case Sensitive Language, that means the Uppercase and the lower Case matters. the First letter needs to be Lowercase and then you can add Uppercases.

If I Want to create a Double quote string and let computer know that it’s not the end of the sentence you just needs to do `\"` before any quote sign that is not representing the end of the string. Example : `var myStr = "I am \"quote\" I am"`. Another way to solve this problem is by start the string with a single quote : `var myStr = 'I am "quote" I am'`

There is a table of symbols that you can Escape : 

`\'` - single quote 

`\\` - backlash 

`\n` - newline  

`\r` - carriage return  

`\t` - tab 

`\b` - backspace  

`\f` - form feed

You can use `+=` operators on strings, to mash up strings.

To find the length of a string you can use the `.length` method, you need to store that value in a variable.

If you want a single character in a string you can use brackets notation to get it. For example : `firstname[0]`

You can’t change a single character in a string, you need to set into the variable the right string that you want.

You can use `.push()` and `.pop()` faction to push or pop a variables in to the end of the array and add or remove that variable. `.shift()` will Extract the first variable from the array. `.unshift()` will add a variable into the first place in the array.

Functions syntax is : `function nameOfTheFunction (The veriable that it gets) {}`

To Declare a Global Variable you need to declare it outside the function, that way every function is able to see that variable.

when you declare a variable in a function without a `var` before it, this variable is Declared **Global**.

In a function, when you have both **Global** and **Local** Variables, it prioritizing the Local First. and outside the function the global variable is the only that is seen, so it’s going to see it.

Equality operators - 

`==` - Finds out if the two arguments are equal, with out taking into consideration the type of the variables. 

`===`- Finds out of the two arguments are equal and taking into consideration the types of the variables.

Switch & case - you can use `switch()` and `case()` when you have a lot of scenarios to a one problem, in the switch you will put the statement and in the cases you setting the possible outcomes and their actions.

instead for returning a Boolean value of True and False, you can return the statement it self which will return a Boolean value. For Example `return a < b;`

Objects in Java Script :

```
var ourDog = {

    "name" : "Camper",
    "legs" : 4,
    "tails" : 1,
    "friends" : ["everything!"]

};
```

after we set an object, we can get the properties with a Dot Notation or Bracket Notation, For example : `var nameValue = ourDog.name;` to get the name of the dog in a Dot Notation. For Example : `var nameValue = ourDog["name"];` to get the name with a Bracket Notation (You can use "" or ’’).

You set the property that you want to find, into a variable that you can set into the bracket notation. For Example :

```
var string = "name";
var nameValue = ourDog[string];
```

Update Properties using a dot notation - `ourDog.name = "Daniel";`

Add new Properties to an Object - `ourDog.bark = "Wof!";`

Deleting Properties - `delete ourDog.bark;`

Checking if Properties exists - `ourDog.hasOwnProperty("name");`

Do While - you put the while a the end of the code and set “Do” instead, the code will run at least one time before it’s going to hit the statement which only than going to check.

Generating a Whole Number - `Math.flor(Math.random * 20)`, we are going to get a random numbers between 1 - 19, because we get a number between 0 and 1, than we multilinking it by 20 and rounding down, the number will never be 20 because the random number is never going to be equal to 1.

Generating number between a range - `Math.floor(Math.random() * (max-min+1) + min)`.

`parseInt()` - converting string into number.

`parseInt(str,2)` - converting a string into number, the number 2 tells the computer that the number is Binary.

Ternary operator - Condition ? true : false;

when you are creating a variable with `let` you won’t be able to recreate it again in the code, this will let to an error.

`"use strict";` - this line of code will prevent any coding mistakes that happening in the code.[Strict Mode use strict Beau teaches JavaScript](https://www.notion.so/Strict-Mode-use-strict-Beau-teaches-JavaScript-c008377c641c4856a6e4175104451e07) 

if you are creating a variable with `var` it will be globally or in a function when you declaring it inside a function, but `let` will only be declared in the block of code that he is in.

Read-only Variable using Const - `const` variable is read-only variable, you can’t change it in the middle of the code.

when a `const` is an array, the array is not always protected, you can change the things in the array like that : `s[0] = 2;`, and that will be legal. to prevent that from happening you can use the `Object.freeze(CONST_NAME)` to freeze the variable.

Anonymous Functions - those three syntax are the same.

```
var magic = function () {
new Date();
};
```

```
var magic = () =>
return new Date();
```

```
const magic= () => new Date();
```

Filter, Map and Reduce Function : [Array Iteration 8 Methods - map, filter, reduce, some, every, find, findIndex, forEach](https://www.notion.so/Array-Iteration-8-Methods-map-filter-reduce-some-every-find-findIndex-forEach-843e756f24594a51a79e79f6d4b266eb) 

It’s more easy to write these function in arrow syntax :

```
const sI = arr.filter(num => Munber.isInteger(num) && num > 0);
```

Default Parameters - kicks in when an arguments is not specified.

```
function increment(number, value = 1)
```

Rest Operator - means that the function can get any number of arguments `...NAME_OF_ARRAY`

Spread operator - can spread an array to individual pieces

```
var arr1 = [1,2,3];
let arr2;
arr2 = [...arr1];
arr1[0] = 4;
```

if we were to ask to print arr2, it’s going to print `1,2,3`, but if don’t have done the spread, the print was `4,2,3` just like arr1.

DE structuring - - Assigning Properties to Variables - `const {x:a,y:b,z:c} = voxel;` - Assigning Properties to Variables in a Nested Objects - `const {tomorrow  : {max : maxOfTomorrow }} = forecast;` - Assigning Variable from arrays - `const [z,x, ,y] = [1,2,3,4,5]; // 1,2,4 skipping item in array     [a,b] = [b,a] // switch the places of the arguments in the array` - Assigning an array to another array, under conditions - ``` const [ , , …arr] = list // copying the array without the 2 first arguments.

```
const [ 1, 2, ...arr] = list // replacing the array's first 2 arguments.

```
```

Every time we use a function on an object we passing the whole object, we can pass in only the properties that we need. (used with API Calls)

```
function half ({ max, min})
```

Template Literals - helping create complex strings, using ````

```
const greetings = `Hello, $ {person.name}, you are ${person.age}`;
```

Simple Fields - when you are using the same name for both the value and the field you can do this

```
cosnt createPerson = (name, age, gender) => ({name, age, gender});
```

this will print - `name : Daniel, age : 18, gender : male`

Declaring a function within a Object -

```
setGear (newGear) {...};
```

you can use a class syntax to create constructors for objects -

```
class SpaceShuttle {
constructor (targetPlanet){ this.targetPlanet = targetPlanet };
}
```

Use Getters and Setters to access an Object -

```
// Getter
get writer() = {return this.author;}
//Setter
set writer(author) = {this.author = author;}
```

Importing & Exporting - for all of the files to see the function you need to export it, you can also export a variables too.

```
export const capitalizeStraing ...
export {capitalizeStraing};
```

and you need to import it in the files that you are using it.

```
import {capitalizeStraing} form "FILE_NAME"
import * from FILE_NAME // this will import the whole file (function and veriables)
```

you can use a `export defult` incase you want to export only ow thins out of your file. To import it you just writing `import FUNC_NAME from FILE_NAME` **with out {}**. 

---