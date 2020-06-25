@def title = "Scientific Computing and Julia"
@def hascode = true
@def date = Date(2019, 3, 22)
@def rss = "A short description of the page which would serve as **blurb** in a `RSS` feed; you can use basic markdown here but the whole description string must be a single line (not a multiline string). Like this one for instance. Keep in mind that styling is minimal in RSS so for instance don't expect maths or fancy styling to work; images should be ok though: ![](https://upload.wikimedia.org/wikipedia/en/3/32/Rick_and_Morty_opening_credits.jpeg)"

@def tags = ["setup", "enviornment"]

# Collections and Data Structures

\toc

## Documentation

* Base
    * ~~~ <a href="https://en.wikibooks.org/wiki/Introducing_Julia/Dictionaries_and_sets" target="_blank">Collections and Data Structures</a> ~~~
* Other
    * Learn X in Y Minutes: ~~~ <a href="https://learnxinyminutes.com/docs/julia/" target="_blank">X=Julia</a> ~~~
    * Introducing Julia Wikibook: ~~~ <a href="https://en.wikibooks.org/wiki/Introducing_Julia/Arrays_and_tuples" target="_blank">Arrays and Tuples</a> ~~~ and ~~~ <a href="https://en.wikibooks.org/wiki/Introducing_Julia/Dictionaries_and_sets" target="_blank">Dictionaries and Sets</a> ~~~

## Theory

## Practice

### Arrays

Arrays are ordered collection of elements. In `Julia` they are automatically indexed (consecutively numbered) by an integer starting with 1.

#### Creating arrays

| Action                    | Syntax                |
| :------------------------ | :-------------------- |
| New array (empty)         | `[]`                  |
| Specify type (integer)    | `Int64[]`             |
| Specify type (string)     | `String[]`            |
| Array with values         | `[1, 2, 3, 4, 5]`     |
| Array with values         | `["a1", "b2", "c3"]`  |
| Array of numbers          | `collect(1:10)`       |

#### Creating array from string

| Action                                                   | Syntax                            |
| :------------------------------------------------------- | :-------------------------------- |
| Split string `str` by delimiter into words (e.g., space) | `split(str, " ")`                 |

#### Accessing elements

| Action                                            | Syntax                            |
| :------------------------------------------------ | :-------------------------------- |
| Get length of array my_array                      | `length(my_array)`                |
| Get first element of array my_array               | `my_array[1]`                     |
| Get last element of array my_array                | `my_array[end]`                   |
| Get n element of array my_array (e.g., 2)         | `my_array[2]`                     |
| Check if element is in array                      | `in(str, my_array)`               |

#### Adding and removing elements

| Action                                            | Syntax                            |
| :------------------------------------------------ | :-------------------------------- |
| Add element to end                                | `push!(my_array, str)`            |
| Remove element from end                           | `pop!(my_array)`                  |
| Remove element from beginning                     | `popfirst!(my_array)`             |
| Add element to beginning                          | `pushfirst!(my_array, str)`       |

#### Sort and unique

| Action                                            | Syntax                            |
| :------------------------------------------------ | :-------------------------------- |
| Sort array (will not change array itself)         | `sort(my_array)`                  |
| Sort array in place (will change array)           | `sort!(my_array)`                 |
| Get unique elements in array                      | `unique(my_array)`                |

#### Compare arrays

| Action                        | Syntax                            |
| :---------------------------- | :-------------------------------- |
| Intersection                  | `intersect(my_array, your_array)` |
| Union                         | `union(my_array, you_array)`      |

#### Convert array to string

| Action                                            | Syntax                            |
| :------------------------------------------------ | :-------------------------------- |
| Convert array to string                           | `join(collect(my_array), str)`    |

Input:

```julia:./arrays.jl
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
unshift!(day_array, "Sunday")
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

```

Output:

\output{./arrays.jl}


### Sets

Sets are an unordered collection of unique elements.

#### Creating sets

| Action                        | Syntax                            |
| :---------------------------- | :-------------------------------- |
| New set (empty)               | `Set[]`                           |
| Specify type                  | `Set{Int64}`                      |
| Set with values               | `Set([1, 2, 3, 4, 5])`            |
| Set with values               | `Set(["a1", "b2", "c3", "b2"])`   |

#### Interacting with sets

| Action                        | Syntax                            |
| :---------------------------- | :-------------------------------- |
| Get length of set my_set      | `length(my_set)`                  |
| Check if value is in set      | `in(str, my_set)`                 |
| Add value                     | `push!(my_set, str)`              |

#### Comparing sets

| Action                        | Syntax                            |
| :---------------------------- | :-------------------------------- |
| Intersection                  | intersect(my_set, your_set)       |
| Union                         | union(my_set, your_set)           |
| Difference                    | setdiff(my_set, your_set)         |

Input:

```julia:./sets.jl
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
```

Output:

\output{./sets.jl}

### Dictionaries

Dictionaries are unordered collection of key-value pairs where the key serves as the index (“associative collection”). Similar to elements of a set, keys are *always* unique.

#### Creating dictionaries

| Action                        | Syntax                                                        |
| :---------------------------- | :------------------------------------------------------------ |
| New dictionary (empty)        | `Dict[]`                                                      |
| Specify type                  | `Dict{String, Int64}`                                         |
| Dictionary with values        | `Dict("one" => 1 , "two" => 2, "three" => 3, "four" => 4)`    |

#### Accessing dictionaries

| Action                                    | Syntax                                                |
| :---------------------------------------- | :---------------------------------------------------- |
| Get value for key in dictionary my_dict   | my_dict["one"]                                        |
| Check if dictionary has key               | haskey(my_dict, "one")                                |
| Check for key/value pair                  | in(("one" => 1), my_dict)                             |
| Get value and set default                 | get(my_dict, "one", 5)<br>get(my_dict, "five", 5)     |
| Add key/value pair                        | my_dict["five"] = 5                                   |
| Delete key/value pair                     | delete!(my_dict, "four")                              |
| Get keys                                  | keys(my_dict)                                         |
| Get values                                | values(dict)                                          |

#### Converting dictionaries

| Action                        | Syntax                            |
| :---------------------------- | :-------------------------------- |
| Convert keys to array         | `collect(keys(my_dict))`          |
| Convert values to array       | `collect(values(my_dict))`        |

#### Sorting dictionaries

| Action                                | Syntax                                                              |
| :------------------------------------ | :------------------------------------------------------------------ |
| Sorting keys                          | `sort(collect(keys(my_dict)))`                                      |
| Sorting values                        | `sort(collect(values(my_dict)))`                                    |
| Sort by value (descending) with keys  | `sort(collect(zip(values(my_dict), keys(my_dict))), rev=true)`      |
| Sort by value (ascending) with keys	| `sort(collect(zip(values(my_dict), keys(my_dict))), rev=false)`     |
| Get top n by value (e.g., 3)          | `sort(collect(zip(values(my_dict), keys(my_dict))), rev=true)[1:3]` |


Input:

```julia:./dicts.jl
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
```

Output:

\output{./dicts.jl}