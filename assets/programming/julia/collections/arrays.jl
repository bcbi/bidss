# This file was generated, do not modify it. # hide
# arrays.jl

day_array = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]
day = "Thursday"

array_length = length(day_array)
array_first_day = day_array[1]
array_last_day = day_array[end]

println("Length of array: $array_length")
println("First day of week: $array_first_day")
println("Third day of week: $(day_array[3])")
println("Last day of week: $array_last_day")

println("$day is in $day_array: $(in(day, day_array))")

# add Sunday to beginning and Saturday to end
pushfirst!(day_array, "Sunday")
push!(day_array, "Saturday")

# print each element of array
println("Day of week: ")
for i in 1:length(day_array)
    println("  $(day_array[i])")
end

println("Day of the week: $(join(collect(day_array), ";"))")

# sort the array and print again
sort!(day_array)
println("Day of the week (sorted): $(join(collect(day_array), ";"))")