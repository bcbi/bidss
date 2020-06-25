# This file was generated, do not modify it. # hide
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