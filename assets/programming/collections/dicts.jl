# This file was generated, do not modify it. # hide
# dicts.jl

day_dict = Dict()
day_length_dict = Dict()

day_dict["Mon"] = "Monday"
day_dict["Tue"] = "Tuesday"
day_dict["Wed"] = "Wednesday"
day_dict["Thu"] = "Thursday"
day_dict["Fri"] = "Friday"

if haskey(day_dict, "Wed")
   println("$(day_dict["Wed"])")
end

if !haskey(day_dict, "Sat")
   println("no key \"Sat\"")
end

println("print key-value pairs")
for day in keys(day_dict)
    println("  $day = $(day_dict[day])")
end

println("print values (sorted)")
for day_value in sort(collect(values(day_dict)))
    println("  $day_value")
end

# get length of each value and keep track of lengths
for day_value in values(day_dict)
    day_length = length(day_value)
    day_length_dict[day_value] = day_length
end

println("print lengths")
for day in keys(day_length_dict)
    println("  $day = $(day_length_dict[day])")
end

println("print lengths in descending order")
for (day, length) in sort(collect(zip(values(day_length_dict), keys(day_length_dict))), rev=true)
    println("  $day = $length")
end

println("print lengths in ascending order")
for (day, length) in sort(collect(zip(values(day_length_dict), keys(day_length_dict))), rev=false)
    println("  $day = $length")
end