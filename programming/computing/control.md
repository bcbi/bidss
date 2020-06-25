@def title = "Control Flow"
@def hascode = true
@def date = Date(2019, 3, 22)
@def rss = "A short description of the page which would serve as **blurb** in a `RSS` feed; you can use basic markdown here but the whole description string must be a single line (not a multiline string). Like this one for instance. Keep in mind that styling is minimal in RSS so for instance don't expect maths or fancy styling to work; images should be ok though: ![](https://upload.wikimedia.org/wikipedia/en/3/32/Rick_and_Morty_opening_credits.jpeg)"

@def tags = ["setup", "enviornment"]

# Control Flow

\toc

## Documentation
* Julia Documentation
    * ~~~ <a href="https://docs.julialang.org/en/v1.0/manual/control-flow/" target="_blank">Control Flow</a> ~~~

## Theory

## Examples

* Test if a specified expression is true or false 
* Short-circuit evaluation
    * Test if all of the conditions are true 		`x && y`
    * Test if any of the conditions are true		`x || y`
    * Test if a condition is not true			`!z`
* Conditional evaluation
    * `if` statement
    * `if-else`
    * `if-elseif-else` 
    * `?:` (ternary operator)

### Conditional Statements

Input:

```julia:./conditions.jl
# conditions.jl
# Demonstrates use of if statement

x, y, z = 100, 200, 300
println("x = $x, y = $y, z = $z")

# Test if x equals 100
if x == 100
  println("$x equals 100")
end

# Test if y does not equal z
if !(y == z)
   println("$y does not equal $z")
end

# Test multiple conditions
if x < y < z
  println("$y is less than $z and greater than $x")
end

# Test multiple conditions using "&&"
if x < y && x < z
  println("$x is less than $y and $z")
end

# Test multiple conditions using "||"
if y < x || y < z
  println("$y is less than $x or $z")
end

# if-else statement
if x < 100
  println("$x less than 100")
else
  println("$x is equal to or greater than 100")
end

# Same logic as above but using the ternary or 
# base three operator (?:)
println(x < 100 ? "$x less than 100 again" : "$x equal to or greater than 100 again")

# if-elseif-else statement
if y < 100
   println("$y is less than 100")
elseif y < 200
  println("$y is less than 200")
elseif y < 300
  println("$y is less than 300")
else
  println("$y is greater than or equal to 300")
end
```

Output:

\output{./conditions.jl}


### Loops
* Repeat a block of code a specified number of times or until some condition is met.
* `while` loop
* `for` loop
* Use `break` to terminate loop

Input:

```julia:./loops.jl
# loops.jl                                                                                                     # Demonstrates use of loops                                                                                    

i = 1

# while loop for incrementing i by 1 from 1 to 3
while i <= 3
  println("while: $i")
  global i += 1     # updating operator; equivalent to i = i + 1
end

# for loop
for j = 1:3
  println("for: $j")
end

for j in 1:3
  println("for again: $j")
end

# nested for loop
for j = 1:3
  for k = 1:3
    println("nested for: $j * $k = $(j*k)")
  end
end
```

Output:

\output{./loops.jl}

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