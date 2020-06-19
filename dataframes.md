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



## Theory: 


## Practice:

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



