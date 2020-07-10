# This file was generated, do not modify it. # hide
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