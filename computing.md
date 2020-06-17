@def title = "Scientific Computing and Julia"
@def hascode = true
@def date = Date(2019, 3, 22)
@def rss = "A short description of the page which would serve as **blurb** in a `RSS` feed; you can use basic markdown here but the whole description string must be a single line (not a multiline string). Like this one for instance. Keep in mind that styling is minimal in RSS so for instance don't expect maths or fancy styling to work; images should be ok though: ![](https://upload.wikimedia.org/wikipedia/en/3/32/Rick_and_Morty_opening_credits.jpeg)"

@def tags = ["setup", "enviornment"]

# Scientific Computing and Julia

\toc

## Introduction
## Numbers and Math

### Types of Numbers
* Integer (positive and negative countin number) - e.g. -3, -2, -1, 0, 1, 2, and 3
    * Signed: Int8, Int16, Int32, Int64, Int128
    * Unsigned: UInt8, UInt16, UInt32, UInt64, UInt128
    * Bool (0 = False and 1 = True)
* Fload (real or floating point numbers) - e.g., -2.14, 0.0, and 3.777
    * Float16, FLoat32, Float64
* Use typeof function to determine type

```julia:./exdot.jl
# Define two variables x and y
x = 100
y = 3.14

# Print out the variable types for each
println("$(typeof(x))")
println("$(typeof(y))")
```

The above code produces:

\output{./exdot.jl}

## Strings, Characters, and Regular Expressions
## Control Flow
## Collections and Data Structures
## File Input/Output
## REPL and Packages
## DataFrames
## Statistics and Machine Learning
## Plotting and Visualization