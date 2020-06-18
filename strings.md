@def title = "Scientific Computing and Julia"
@def hascode = true
@def date = Date(2019, 3, 22)
@def rss = "A short description of the page which would serve as **blurb** in a `RSS` feed; you can use basic markdown here but the whole description string must be a single line (not a multiline string). Like this one for instance. Keep in mind that styling is minimal in RSS so for instance don't expect maths or fancy styling to work; images should be ok though: ![](https://upload.wikimedia.org/wikipedia/en/3/32/Rick_and_Morty_opening_credits.jpeg)"

@def tags = ["setup", "enviornment"]

# Strings, Characters, and Regular Expressions

\toc

## Documentation
* Manual
    * ~~~ <a href="https://docs.julialang.org/en/v1/manual/integers-and-floating-point-numbers/" target="_blank">Integers and Floating Point Numbers</a> ~~~
    * ~~~ <a href="https://docs.julialang.org/en/v1/manual/mathematical-operations/" target="_blank">Mathematical Operations and Elementary Functions</a> ~~~
* Base
    * ~~~ <a href="https://docs.julialang.org/en/v1/base/numbers/" target="_blank">Numbers</a> ~~~
    * ~~~ <a href="https://docs.julialang.org/en/v1/base/math/" target="_blank">Mathematics</a> ~~~

## Theory: Number Variable Types
* Integer (positive and negative counting number) - e.g. `-3, -2, -1, 0, 1, 2, and 3`
    * Signed: `Int8, Int16, Int32, Int64, and Int128`
    * Unsigned: `UInt8, UInt16, UInt32, UInt64, and UInt128`
    * Boolean: `Bool` (0 = False and 1 = True)
* Float (real or floating point numbers) - e.g., `-2.14, 0.0, and 3.777`
    * `Float16, Float32, Float64`

## Examples:

### Types of Numbers

Use `typeof()` function to determine type

Input:

```julia:./types.jl
# Define two variables x and y
x = 100
y = 3.14

# Print out the variable types for each
println(typeof(x))
println(typeof(y))
```

Output:

\output{./types.jl}


### Arithmetic Operators

| Operator | Example |
| :--- | :--- |
| Addition | x + y |
| Subtraction | x - y |
| Multiplication | x * y |
| Division | x / y |
| Power (Exponent) | x ^ y |
| Remainder (Modulo) | x % y |
| Negation (for Bool) | !x |

Input:

```julia:./math_operators.jl
# Demonstrates different math operations
using Printf

n1 = 7    # First number
n2 = 3    # Second number
 
# Output results of different math operations
println("$n1 + $n2 = $(n1 + n2)")             # Addition 
println("$n1 - $n2 = $(n1 - n2)")             # Subtraction 
println("$n1 * $n2 = $(n1 * n2)")             # Multiplication 
println("$n1 / $n2 = $(n1 / n2)")             # Division 
@printf("%d / %d = %.2f\n", n1, n2, n1 / n2)  # Print to 2 decimal places
println("$n1 ^ $n2 = $(n1 ^ n2)")             # Power/Exponent
println("$n1 % $n2 = $(n1 % n2)")             # Modulo/Remainder
```

Output:

\output{./math_operators.jl}

### Comparison Operators and Functions

Input:

| Operator | Example |
| :--- | :--- |
| Equality | x == y or isequal(x, y) |
| Inequality | x != y or !isequal (x, y) |
| Less than | x < y |
| Less than or equal to | x <= y |
| Greater than | x > y |
| Greater than or equal to | x >= y |

```julia:./compare_operators.jl
# compare.jl                                                                                                 
# Demonstrate comparison operators                                                                               

# Assign values to variables using parallel assignment                                                           
c1, c2, c3, c4 = 25, 50, 75, 50
println("c1 = $(c1), c2 = $(c2), c3 = $(c3), c4 = $(c4)")

# Output results of different comparison operations                                                             
 
# Testing equality                                                                                               
println("  c1 = c3 is $(c1 == c3)")
println("  c2 = c4 is $(isequal(c2, c4))")

# Changing values using abbreviated assignment operators                                                        
c1 *= 3    	# Shorthand for c1 = c1 * 3                                                                       
c4 += 1    	# Shorthand for c4 = c4 + 1                                                                       

println("c1 = $(c1), c2 = $(c2), c3 = $(c3), c4 = $(c4)")
 
# Testing less than and greater than
println("  c1 < c2 is $(c1 < c2)")
println("  c4 <= c2 is $(c4 <= c2)")
println("  c1 > c2 is $(c1 > c2)")
println("  c3 >= c2 is $(c3 >= c2)") 
```

Output:

\output{./compare_operators.jl}