# This file was generated, do not modify it. # hide
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