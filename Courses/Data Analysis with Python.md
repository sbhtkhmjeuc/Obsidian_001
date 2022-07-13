# Data Analysis with Python

Last modified: April 2, 2022 12:34 PM
Priority: Important
Progress: Done
Subject: Data Analysis, Programming
URL: https://www.youtube.com/watch?v=r-uOLxNrNk8

[](https://numpy.org/doc/stable/numpy-ref.pdf)

# Introduction

![Screenshot (7).png](Data%20Analysis%20with%20Python%208f40f3fc506243d79726fc09e3f1fb6c/Screenshot_(7).png)

# NumPy

Extremally Good, Because compare to other programming Languages, Python isn’t much faster from C, the NumPy knows that so it’s getting the commands from python, and preform the actual calculations in C, which is giving the result much faster.

## Low-Level Explanations

NumPy is better because, unlike Python NumPy can change it storage size of the memory allocated to each number in the memory (and save space in memory), when Python has to allocated 20-bits to every number doesn't matter which number it is.

### Multi-Indexing

to create 

when you’re want a specific indices in the array, usually in python you will type `array[INDEX]`, which is fine if you want only one value, but if you want multiple values, you’ll need to write all of this down times the number of values that you want, but in NumPy you can simply write, `array[[INDEX1, INDEX2, INDEX3]]` and will return the values in those indices, as a **NumPy array**. 

To see the Function that NumPy has for Arrays Go to **numpy-ref.pdf**, to Routine Section, and in Array Objects . 

### Indexing & Slicing of Metricizes

when you are talking about Metrix, and you want a specific element in the array, you can write `array[D1, D2, ...]` , so as you write this down you getting one dimension in the array.  

when you want to rewrite the array, you can do that by 2 ways. First you can write `array[X] = [10,11,12]` , and f the dimension are correct, this will work with no problem. Second, you can write `array[X]=99` and in the X number of the first dimension, all of the values will be fixed to 99. 

### Summary Statistics

all of the functions that are operating on an array are in the “numpy-ref.pdf” in Array Objects.

### Broadcasting & Vectorized Operations

In NumPy you can specify the whole array, and this will go over all the elements in the array and preform the operation on them, **Without changing the array.**

For Example we’ll write, `array = np.arange(4)` this command will set an array named “array” and setting in it a the number between 0-4 (included), now we can preform `a + 10` , which will take the whole array and adda to each element 10. **We are creating a now array, which means that the values in the array are never changing, unless we want to.** 

**You can also perform these operations between two arrays.** For Example, `a+b` .

### Boolean Arrays

You can use Boolean array to select a elements inside of an array. For Example, `a = [1,2,3,4]` and we do that, `a[[True, False, False, True]]` this will return an array with the elements which their index in the Boolean array is true.

You can preform a Boolean operations on an array. For Example,  you can type `a≤2` this will return an array with Boolean values in it.

### Linear Algebra

all the built-in function of NumPy for linear algebra, are in the NumPy user guild (up-top, just search Linear Algebra).

![Python-NumPy-Cheat-Sheet-1.png](Data%20Analysis%20with%20Python%208f40f3fc506243d79726fc09e3f1fb6c/Python-NumPy-Cheat-Sheet-1.png)

# Pandas

## Series

Is a data structure, some kind of a combination between a NumPy array and a dictionary, which means that it have indexes that you can refer to, but also you can pair values together and call them just you’ll call dictionary.  

To locate by the Dictionary value you need to write `series[’name’]`

to locate by a index number, you need to write `serires.iloc[NUMNER]`  

just like NumPy array you can call to values at once. 

you can ask for a range of values, but unlike python range, you also getting the last value that you are wrote. For Example `series[’name1’ : ‘name2’]` , you’ll get also the name2 including in the range.  

### Conditional Selection (Boolean Series)

just like in NumPy, you can Preform Boolean and Asthmatics operators on a series, you will a Boolean series that have a Boolean field in it instead of your field that you were checking. 

you can also just select the field that answers the condition. For Example `series[series > NUMBER]` . 

### Modifying Series

You can modify a fields if based on a Boolean condition.

## Data Frames

It’s just like Excel file, Data Frame is a combination of a multiple series. 

### Indexing, Selection & Slicing

when you have Data Frame, you can select data by **Index** (using the iloc() method) ****or by **Value** (using the loc() method), and by not using nothing just naming the column you will the the info it that column.

![Untitled](Data%20Analysis%20with%20Python%208f40f3fc506243d79726fc09e3f1fb6c/Untitled.png)

[Python-Pandas-Cheat-Sheet.webp](Data%20Analysis%20with%20Python%208f40f3fc506243d79726fc09e3f1fb6c/Python-Pandas-Cheat-Sheet.webp)

## Data Cleaning

when you are cleaning the data, there 4 stages that you need to do before work with it :

- Dealing With Missing Data
- Invalid Values
- 
- The Domain of the Data

### Detecting a NaN | None Values

`pd.isnull()` / `pd.isna()`- returns True if it’s Null or NaN, You can pass series, You can use this method as a function on series and Data Frames. 

`pd.notnull()` / `pd.notna()` - return False if the value is Null or NaN, and True if it’s not Null or NaN. you can pass a series

`pd.sum()` - sums up, For Example `pd.notnull(series).sum()` will return the sum of elements that are not null in the series.

`pd.dropna()` - dropping all of the values that answer the specifications.

`s.fillna()` - this will replace the NaN Value in a chosen number.

`df.fillna(method=’ffill’,axis=0/1)` - will fill the NaN Values and “Smaging” the values on to NaN. 0 - columns & 1 - rows.

## Cleaning Value that isn’t correct

`df[’NAME’].unique()` - this is return the unique values in the column.

`df[’NAME’].value_count()` - returns the unique values and the number of times that they are representing in the Data Frame.

`df.[’NAME’].replace({})` - changes the data frame by passing a dictionary `{the value that want to replace : value to replace to}` 

`df.duplicates()` - return a boolean array for the duplicated values based, when the first from up to down isn’t duplicated.

`df.drop_dupliactes()` - drops the objects that are considered duplicated. 

`df.duplicates(subset=[’NAME’])` - returns a boolean array that is taking into consideration the chosen column and preform that `duplicates` relative to it.