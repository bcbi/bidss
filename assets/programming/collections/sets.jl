# This file was generated, do not modify it. # hide
# sets.jl

color_set = Set(["red", "yellow", "blue"])
color_set2 = Set(["red", "orange", "yellow"])

println("Length	of set:	$(length(color_set))")

println("Color Set 1")
for color in color_set
    println("  $(color)")
end

println("Color Set 2: $(join(collect(color_set2), "---"))")

println("Intersection: $(intersect(color_set, color_set2))")
println("Union: $(union(color_set, color_set2))")
println("Difference: $(setdiff(color_set, color_set2))")
println("Difference: $(setdiff(color_set2, color_set))")