# Python For Data Analysis

Last modified: April 2, 2022 12:16 PM
Priority: Not important
Progress: In Progress
Subject: Data Analysis, Programming, Python, Trading

# NumPy Basics

NumPy-based algorithms are generally 10 to 100 times faster (or more) than their pure Python counterparts and use significantly less memory.

## The NumPy ndarray

*ndarray (N-dimensional array)-* an efficient multidimensional array providing fast array-oriented arithmetic operations and flexible broadcasting capabilities.

### Creating ndarray

The easiest way to create an array is to use the array function. This accepts any
sequence-like object (including other arrays) and produces a new NumPy array containing the passed data.

Examples :

```python
In [19]: data1 = [6, 7.5, 8, 0, 1]
In [20]: arr1 = np.array(data1)
In [21]: arr1
Out[21]: array([ 6. , 7.5, 8. , 0. , 1. ])
```

```python
In [22]: data2 = [[1, 2, 3, 4], [5, 6, 7, 8]]
In [23]: arr2 = np.array(data2)
In [24]: arr2
Out[24]:
array([[1, 2, 3, 4],
			[5, 6, 7, 8]])
```