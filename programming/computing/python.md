@def title = "Getting Started"
@def hascode = true
@def date = Date(2019, 3, 22)
@def rss = "A short description of the page which would serve as **blurb** in a `RSS` feed; you can use basic markdown here but the whole description string must be a single line (not a multiline string). Like this one for instance. Keep in mind that styling is minimal in RSS so for instance don't expect maths or fancy styling to work; images should be ok though: ![](https://upload.wikimedia.org/wikipedia/en/3/32/Rick_and_Morty_opening_credits.jpeg)"

@def tags = ["setup", "enviornment"]


# Introduction to Python

Python is one of the many languages used in the data science community to perform data manipulation, statistical modeling and machine learning. There are certain tasks where Python excels and you may choose to use it over Julia. This section will provide you with the basic syntax of Python to get started and some use cases where you might choose to use the language.

For this section, a side-by-side comparison of Julia code will be provided for reference.

## Basic Syntax
### REPL
Much like Julia python provides a REPL to run code:

```
$ julia
$ python
```

When using Python, it is important to note that syntax and packages may vary depending on the version you have installed. Thus as with the Julia REPL, you can check your version of Python by adding the ```--version``` argument to the above command.

### Setting Variables
The syntax for setting variables is exactly the same for each language:

Python:

```x = 1```

Julia

```x = 1```

Python provides the ```type(x)``` function in order to find the type of a variable ```x```.

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

One of the key syntactical features of Python is how it uses whitespace. Instead of adding the ```end``` keyword to denote the end of an if statement, in Python, only code that is tabbed under the if statement will run.

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
The hash symbol with an equals sign
a multiline comment.
=#
```

## Data Structures

### Arrays

#### Creating Arrays

Python and Julia have similar syntax to create an Array. In Python arrays are called lists. While in Julia we can define Array types, in Python arrays cannot have type constraints without additional packages.

The syntax to create an array in both languages is as follows:
```
array = []
```

#### Indexing in Arrays

Unlike in Julia, Python indexes at 0 rather than 1. Thus in order to access the first element in an array you would write ```array[0]```, while in Julia it would be ```array[1]```. To access the last index in array, Python provides negative indexing. Thus in Python we would use ```array[-1]```, where in Julia we would use ```array[end]```. Python's negative indexing may also be useful in indexing an array in reverse. If we want to access for example the second-to-last element in a Python array we can use ```array[-2]```.

Python, much like Julia, also offers array slicing in order to retrieve subsets of arrays. The syntax is similar for both languages for array slicing: ```array[(start index):(end index)]```, where start index and end index are the indices where you would like your array slice to start and end. It must be noted that Python's end index, uinlike in Julia, is not inclusive. In other words if we wanted to access the elements from the first to third indices we would need to write ```array[0:3]``` in Python, where the fourth element at ```array[3]``` will not be included in the subset of the array.

In Python the syntax also allows us to omit indices that are implied: if we want to get the slice of the array that starts at the second index and ends at the last index we can write ```array[1:]```, where in Julia we would write ```array[2:end]```. We can omit the ending index after the colon, as it implied when left out that we want to include the rest of the array in our slice. Similarly, if we wanted to have a slice that starts at the beginning of the array and lasts at the second to last element we would use ```array[:-1]```, where in Julia we would use ```array[1:length(a)-1]```.

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

The example above would yield ```[1, 4, 9, 16, 25, 36, 49, 64, 81, 100]``` in both languages.

##### Python Documentation
Documentation on Python lists can be found [here](https://docs.python.org/3/tutorial/datastructures.html).

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

- Union: ```a | b``` and outputs: ```set([1,2])```
- Intersection ```a & b``` and outputs: ```set([])```

Julia:

```
a = b = Set()
push!(a,1)
push!(b,2)
```

- Union: ```union(a,b)``` and outputs: ```set(Any[1,2])```
- Intersection ```intersect(a,b)``` and outputs: ```set(Any[])```

##### Python Documentation
More set operations in Python can be found in the official Python set docummentation [page](https://docs.python.org/3/library/stdtypes.html#set).

### Dictionaries

#### Creating a Dictionary
Python:
```d = {}``` or ```d = dict()```

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

The below example prints all key value pairs in a dictionary ```d```.

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
Python official [documentation](https://docs.python.org/3/library/stdtypes.html#mapping-types-dict) on dictionaries further outlines the language's features.

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
```
df.A``` or ```df["A"]
```


##### pandas Documentation
The full pandas documentation is very extensive and should have any features that we could find in DataFrames.jl. The documentation can be found [here](https://pandas.pydata.org/docs/user_guide/index.html).



## Miscellanious Tasks

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

Once in the Julia REPL you can type the close bracket symbol ```]```, which will take you the package environment.

```
(v1.0) pkg> add [package name]
```

We can install any package from the package environment by replacing the package name with the wanted package.
