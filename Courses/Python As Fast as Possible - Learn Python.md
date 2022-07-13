# Python As Fast as Possible - Learn Python

Last modified: March 7, 2022 2:51 PM
Priority: Not important
Progress: Done
Subject: #s/Programming
URL: https://www.youtube.com/watch?v=VchuKL44s6E&ab_channel=TechWithTim

## Array & Tuples

Arrays are Mutables, but ==Tuples are not Mutable==. can used with a slice operator.

Tuples (syntex : `(1,2)` using `()`) are just like arrays but **they are not changeable**. you can not change them.

## Slice Operator

`slice = [start:stop:step]` Not including the start or the stop in the repetition. can be used on Strings, Arrays and Tuples.

## Sets

Definition : unordered list of Unique elements (not repeating elements). usage of a set is if something if exists of not exists. `x = set()` “IN” Query - `33 in s`,==Works on any Data Type==, this will return a boolean of the element if there or not there. **(O(1))**

## Dicts

`x = {'key':'Value'} // print(x['key']) x['key2'] = 5 // making a new key del x['key'] // deleting a key` the values in the dicts don’t have to be the same, for example you can write for one key a int and for the other a set.

## Comprehensions

Creating a Data Type Storage, in one line. For Example : `x = [ACTION for VAR in COLLECTION]`, because it’s in a `[]` it’s converting it self into a list, you can also use the `{}` for Dicts. With tuples you need to use the `tuple()` constructor from python, to create a tuple and not [[Python generators |Generators]].

## Functions

syntax - `def FUNC_NAME (VALUES):`

you can return multiple arguments, if you doing that, you can save the arguments inside multiple veriables : `r1,r2 = func(5,6) // return x*y, x/y`

## Unpack Operator / `` args and `*` kwargs

syntax - `* NAME_DATA_TYPE` / `** DICTS` Unpacks the lists inside the array, and passes them to print one by one.

whenyou don’t know how much arguments you are want to pass into the function you can use `*args,**kwargs` (Key words)

## Exceptions & Handling Exceptions

syntex - `rasie Exception('WORD')`. You can use multipule Exceptions, for multipule errors.

`try: x = 7/0 // something to try except EXCEPTION as VERIABlE: print(VERIABlE) // catching the exception that accurse and print it else : pass // what the program should do in case the try is not rasing any exceptions finally: print('finally') // things to do when the program is over, things that need to be done regardledd if the code was good or not`

## Lambda

One line anonymous function, the usage is for mainly `Map() & Filter()`.

## F Strings

`x = f'hello {VEIRALBE}'` - veriables can be embaded in string.