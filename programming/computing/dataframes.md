@def title = "DataFrames"
@def hascode = true
@def date = Date(2019, 3, 22)
@def rss = "A short description of the page which would serve as **blurb** in a `RSS` feed; you can use basic markdown here but the whole description string must be a single line (not a multiline string). Like this one for instance. Keep in mind that styling is minimal in RSS so for instance don't expect maths or fancy styling to work; images should be ok though: ![](https://upload.wikimedia.org/wikipedia/en/3/32/Rick_and_Morty_opening_credits.jpeg)"

@def tags = ["setup", "enviornment"]

# DataFrames

\toc

## Documentation
* ~~~ <a href="https://juliadata.github.io/CSV.jl/stable/" target="_blank">CSV.jl</a> ~~~
* ~~~ <a href="https://juliadata.github.io/DataFrames.jl/stable/man/getting_started.html" target="_blank">DataFrames.jl</a> ~~~
* ~~~ <a href="https://en.wikibooks.org/wiki/Introducing_Julia/DataFrames" target="_blank">Introducing Julia Wikibook: DataFrames</a> ~~~
* ~~~ <a href="https://jcharistech.wordpress.com/julia-dataframes-cheat-sheets/" target="_blank">Julia DataFrames Cheat Sheets</a> ~~~



## Theory


## Practice

**Install and Load DataFrames.jl Package**

```julia:./dataframes.jl
using Pkg

# Add DataFrames package
Pkg.add("DataFrames")

# Load paackages
using DataFrames
```

**Create Dataframe**

```julia:./dataframes.jl
# Create dataframe
df = DataFrame(id = 1:5, gender = ["F", "M", "F", "M", "F"], age = [68, 54, 49, 28, 36])
```

**Display Dataframe**

Input:

```julia:./dataframes.jl
# display dataframe
println(df)
```

Output:
\output{./dataframes.jl}

First two lines of dataframe:
Input:

```julia:./dataframes.jl
println(first(df, 2))
```
Output:

\output{./dataframes.jl}

Last two lines of dataframe:

Input:

```julia:./dataframes.jl
println(last(df, 2))
```
Output:

\output{./dataframes.jl}

**Describe Dataframe**

Dataframe size:

Input: 

```julia:./dataframes.jl
# dataframe size
println(size(df))
```

Output:

\output{./dataframes.jl}

Dataframe column names:

Input:

```julia:./dataframes.jl
# dataframe column names
println(names(df))
```

Output:

\output{./dataframes.jl}

Dataframe description:

Input:

```julia:./dataframes.jl
# describe dataframe
println(describe(df))
```

Output:

\output{./dataframes.jl}

**Accessing DataFrames**

**_Get "age" column (different ways to call the column)_**

Input:

```julia:./dataframes.jl
# call by column name
println(df[!, :age])

# get column by column number
println(df[!, 3])

# alternate syntax
println(df.age)
```

Output:

\output{./dataframes.jl}


**_Get row_**

Input: 

```julia:./dataframes.jl
# print row 2
println(df[2, :])
```

Output:

\output{./dataframes.jl}

**_Get element_**

Input: 

```julia:./dataframes.jl
# get element in row 2, column 3
println(df[2,3])
```

Output:

\output{./dataframes.jl}

**_Get subset (specific rows and all columns)_**

Input: 

```julia:./dataframes.jl
# print out rows 1, 3, & 5
println(df[[1,3,5], :])
```

Output:

\output{./dataframes.jl}


**_Get subset (all rows and specific columns)_**

Input: 

```julia:./dataframes.jl
# print out all rows and only columns 1 (id) and 3 (age)
println("Using column names:\n")
println(df[:, [:id, :age]])
println()

println("Using column numbers:\n")
println(df[:, [1,3]])
```

Output:

\output{./dataframes.jl}

**_Get subset (all rows meeting specified criteria - numbers)_**

Input: 

```julia:./dataframes.jl
# print out all rows where age is greater than 50
println(df[df.age .> 50, :])
```

Output:

\output{./dataframes.jl}

**_Get subset (all rows meeting specified criteria - strings)_**

Input: 

```julia:./dataframes.jl
# print out all rows where gender is female ("F")
println(df[df.gender .== "F", :])
```

Output:

\output{./dataframes.jl}


**_Get subset (all rows meeting specified criteria)_**

Input: 

```julia:./dataframes.jl
# print out all rows where gender is female ("F") and age is between 25-50
println(df[(df.gender .== "F") .& (25 .< df.age .< 50), :])
```

Output:

\output{./dataframes.jl}

**Add Column**

**_New columns with specified values_**

Input: 

```julia:./dataframes.jl
# add a column for weight
df.weight = [100, 120, 150, 175, 300]

# add a column for height
df.height = [62, 60, 61, 63, 64]

println(df)
println()

println("Describe dataframe to see column names and summary:\n")
println(describe(df))
```

Output:

\output{./dataframes.jl}


**_New column with calculated value_**

Input: 

```julia:./dataframes.jl
# add a column with calculated BMI
df.bmi = map((x,y) -> (x/y^2)*703, df.weight, df.height)

println(df)
println()

println("Describe dataframe to see new bmi column and summary:\n")
println(describe(df))
```

Output:

\output{./dataframes.jl}

**_Get counts/frequency_**

Input: 

```julia:./dataframes.jl
# get counts of males and females in the dataframe
println(by(df, :gender, N = :gender => length))
```

Output:

\output{./dataframes.jl}

**Transform DataFrame**

**_sort_**

Input: 

```julia:./dataframes.jl
# sort the dataframe by gender and then age in reverse order for age (oldest to youngest)
println(sort(df, [:gender, :age], rev=(false, true)))
```

Output:

\output{./dataframes.jl}

**_stack (reshape from wide to long format)_**

Input: 

```julia:./dataframes.jl
# Reshape from wide to long format (disclude id to see which column and value matches which patient id)
long_df = stack(df, Not(:id))
println(long_df)
```

Output:

\output{./dataframes.jl}

**_unstack (reshape from long to wide format)_**

Input: 

```julia:./dataframes.jl
#unstack dataframe to get back to wide format based off "id" (unstack(df, :id, :variable, :value))
wide_df = unstack(long_df, :id, :variable, :value)
println(wide_df)
```

Output:

\output{./dataframes.jl}


**Traversing DataFrame (for loops)**

**_sort_**

Input: 

```julia:./dataframes.jl
# size of dataframe = size(df)
# set number of rows to nrows and number of columns to ncols
println("(nrows, ncols) = $(size(df))")
nrows, ncols = size(df)

# use nested for loop to get information from dataframe by row and column
for row in 1:nrows
  for col in 1:ncols
	println("value for row $row and col $col is $(df[row,col])")
  end
end
```

Output:

\output{./dataframes.jl}
