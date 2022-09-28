@def title = "Intro to Python"
@def date = Date(2019, 3, 22)
@def rss = "Python is one of the many languages used in the data science community to perform data manipulation, statistical modeling and machine learning. There are certain tasks where Python excels and you may choose to use it over Julia. This section will provide you with the basic syntax of Python to get started."

@def tags = ["python","intro","introduction"]

# 6.12 Intro to Python

\toc

Python is one of the many languages used in the data science community to perform data manipulation, statistical modeling and machine learning. There are certain tasks where Python excels and you may choose to use it over Julia. This section will provide you with the basic syntax of Python to get started.

For this section, a side-by-side comparison of Julia code will be provided for reference.

## Basic Syntax
### REPL
Much like Julia python provides a REPL to run code:

```
$ julia
$ python
```

When using Python, it is important to note that syntax and packages may vary depending on the version you have installed. Thus as with the Julia REPL, you can check your version of Python by adding the `--version` argument to the above command.

### Setting Variables
The syntax for setting variables is exactly the same for each language:

Python:

```x = 1```

Julia 

```x = 1```

Python provides the `type(x)` function in order to find the type of a variable `x`.

### Types
The following table shows the some basic types in Julia and Python:

| Description | Julia  | Python |
|-------------|--------|--------|
| Integer     | Int    | int    |
| Float       | Float  | float  |
| String      | String | str    |


### Logical and Equality Operators
The following table shows the logical operators in Julia and Python:

| Description         | Julia                | Python               |
|---------------------|----------------------|----------------------|
| Logical And         | &&                   | and                  |
| Logical Or          | \|\|                 | or                   |
| Logical Not         | !                    | not                  |
| Equality/Inequality | == / < / > / <= / >= | == / < / > / <= / >= |
| Not Equal           | !=                   | !=                   |


### If Statements
Python:

```
if (boolean expression):
	 Code to run
```

Julia:

```
if (boolean expression)
	Code to run
end
```

One of the key syntactical features of Python is how it uses whitespace. Instead of adding the `end` keyword to denote the end of an if statement, in Python, only code that is tabbed under the if statement will run. 

### While Loops
Python:

```
while (boolean expression):
	Code to run
```

Julia:

```
while (boolean expression)
	Code to run
end
```

Similar to if statements, in Python the code that needs to be run inside the while loop should be tabbed.

### For Loops
Python:

```
for element in range:
	Code to run
```

Julia:

```
for element = range
	Code to run
end
```

### Functions

A simple example of a function that returns the sum of two integers can be seen below. 

Python:

```
def function_name(x,y):
	return x + y
```

Julia:

```
function function_name(x,y)
	return x + y
end
```

### Commenting

Python:

```
# The hash symbol denotes a single line comment
‘’’
Three single quotes denotes
a multiline comment.
‘’’
```

Julia:

```
# The hash symbol denotes a single line comment
#=
The hash symbol with an equals sign is
a multiline comment.
=#
```

## Data Structures

### Arrays

#### Creating Arrays

Python and Julia have similar syntax to create an Array. In Python, arrays are called lists. While in Julia we can define Array types, Python arrays cannot have type constraints without additional packages. 

The syntax to create an array in both languages is as follows:
```
array = []
```

#### Indexing in Arrays

Unlike in Julia, Python indexes at 0 rather than 1. Thus in order to access the first element in an array we would write `array[0]`, while in Julia it would be `array[1]`. To access the last index in an array, Python provides negative indexing. Thus in Python we would use `array[-1]`, where in Julia we would use `array[end]`. Python's negative indexing may also be useful for indexing an array in reverse. If we want to access for example the second-to-last element in a Python array we can use `array[-2]`. 

Python, much like Julia, also offers array slicing in order to retrieve subsets of arrays. The syntax is similar for both languages for array slicing: `array[(start index):(end index)]`, where start index and end index are the indices where you would like your array slice to start and end. It must be noted that Python's end index, uinlike in Julia, is not inclusive. In other words if we wanted to access the elements from the first to third indices we would need to write `array[0:3]` in Python, where the fourth element at `array[3]` will not be included in the subset of the array.

In Python the syntax also allows us to omit indices that are implied: if we want to get the slice of the array that starts at the second index and ends at the last index we can write `array[1:]`, where in Julia we would write `array[2:end]`. We can omit the ending index after the colon, as it implied when left out that we want to include the rest of the array in our slice. Similarly, if we wanted to have a slice that starts at the beginning of the array and lasts at the second to last element we would use `array[:-1]`, where in Julia we would use `array[1:length(a)-1]`. 

#### Appending to Arrays

Python:

```
array.append(element)
```

Julia:

```
append!(array,element)
```

#### Array Length
Python:

```
len(array)
```

Julia:

```
length(array)
```

#### Array/List Comprehension

Both languages provide syntax that shortens iteratively adding elements to an array:

Python:

```
[expression for element in iterable]
```

Julia:

```
[expression for element = iterable]
```

For example if we wanted to create an array with the first 10 squares we would write the following:

Python:

```
[x ** 2 for x in range(1,11)]
```

Julia:

```
[x ^ 2 for x = 1:10]
```

The example above would yield `[1, 4, 9, 16, 25, 36, 49, 64, 81, 100]` in both languages.

##### Python Documentation
Documentation on Python lists can be found ~~~ <a href="https://docs.python.org/3/tutorial/datastructures.html" target="_blank">here</a> ~~~ .

### Sets

#### Creating Sets

Python:
```
s = set()
```

Julia: 
```
s = Set()
```

#### Adding/Removing Elements
Python:

```
s.add(element)
s.remove(element)
```

Julia: 

```
push!(s,element)
delete!(s,element)
```

#### Set Operations

Python:

```
a = b = set()
a.add(1)
b.add(2)
```

- Union: `a | b` and outputs: `set([1,2])`
- Intersection `a & b` and outputs: `set([])`

Julia:

```
a = b = Set()
push!(a,1)
push!(b,2)
```

- Union: `union(a,b)` and outputs: `set(Any[1,2])`
- Intersection `intersect(a,b)` and outputs: `set(Any[])`
 
##### Python Documentation
More set operations in Python can be found in the official Python set docummentation ~~~ <a href="https://docs.python.org/3/library/stdtypes.html#set" target="_blank">page</a> ~~~ .

### Dictionaries

#### Creating a Dictionary
Python:
`d = {}` or `d = dict()`

Julia:
```
d = Dict()
```

#### Accessing Dictionary
Python:
```
d[key] = value
``` 

Julia:
```
d[key] = value
```
#### Iterating Through Key-Value Pairs:

The below example prints all key value pairs in a dictionary `d`.

Python:

```
for key, value in d.items():
	print(key,value)
```

Julia:

```
for (key, value) in d:
	print(key,value)
end
```

##### Python Documentation
Python official  ~~~ <a href="https://docs.python.org/3/library/stdtypes.html#mapping-types-dict" target="_blank">documentation</a> ~~~ on dictionaries further outlines the language's features.

### DataFrames

#### Importing Libraries
Both Python and Julia support the use of DataFrames through external libraries and hence must be imported.
Python:

```
import pandas as pd
```

Julia:

```
using DataFrames
```

#### Creating a DataFrame
Python:

```
data = {
			'A': [element_1, element_2, ...],
			'B': [element_1, element_2, ...],
			...
		}

df = pd.DataFrame(data)
```

Julia:

```
df = DataFrame(A = [element_1, element_2, ...], B = [element_1, element_2, ...])
```

#### Accessing a Column
Python and Julia:
`df.A` or `df["A"]`


##### pandas Documentation
The full pandas documentation is very extensive and should have any features that we could find in DataFrames.jl. The documentation can be found ~~~ <a href="https://pandas.pydata.org/docs/user_guide/index.html" target="_blank">here</a> ~~~ .



## Miscellaneous Tasks

### Reading a CSV file as a DataFrame
Python:

```
import pandas as pd 
df = pd.read_csv([your filename]) 
```

Jullia:

```
using CSV
df = CSV.read([your filename])
```

### Installing Packages
Python:
```
$ pip install [package name]
```

Julia:

```
$julia
$julia>
```

Once in the Julia REPL you can type the close bracket symbol `]`, which will take you the package environment. 

```
(v1.0) pkg> add [package name]
```

We can install any package from the package environment by replacing the package name with the wanted package.

### List of Useful Packages
Below are some useful packages for plotting, data processing, and various statistical learning packages. The links are provided for each of their documentation page.


* Plotting
    * ~~~ <a href="https://matplotlib.org/" target="_blank">matplotlib</a> ~~~ is a highly configurable plotting package with great documentation.
    * ~~~ <a href="https://seaborn.pydata.org/" target="_blank">seaborn</a> ~~~ is built on top of matplotlib and has graphs that look great out of the box without too much styling on the user's part.

* Data
    * ~~~ <a href="https://pandas.pydata.org/" target="_blank">pandas</a> ~~~ is the Python equivalent of DataFrames in Julia.
    * ~~~ <a href="https://numpy.org/" target="_blank">numpy</a> ~~~ expands features of arrays in pythons to allow for matrix operations. Much of these features are in vanilla Julia.
* Machine Learning and Stats
    * ~~~ <a href="https://scikit-learn.org/stable/" target="_blank">scikit-learn</a> ~~~ is a robust package with a plethora of machine learning and statistical techniques. 
    * ~~~ <a href="https://www.statsmodels.org/stable/index.html" target="_blank">statsmodels</a> ~~~ is a package which is more geared towards statistical techniques and provides more metrics on how your model is performing.
* Deep Learning 
    * ~~~ <a href="https://www.tensorflow.org/" target="_blank">tensorflow</a> ~~~ is a complex and highly configurable deep learning platform created by Google.
    * ~~~ <a href="https://pytorch.org/" target="_blank">pytorch</a> ~~~ similarly is a great deep learning platform created by Facebook. 
    * ~~~ <a href="https://keras.io/" target="_blank">keras</a> ~~~ is a high-level wrapper over other deep learning libraries to make deep learning more accesible.

* Text Processing and Natural Language Processing
    * ~~~ <a href="https://www.nltk.org/" target="_blank">nltk</a> ~~~  is a package for text processing.
    * ~~~ <a href="https://spacy.io/" target="_blank">spacy</a> ~~~ is also a package that provides a large library of tools to text process before using any machine learning algorithms. 