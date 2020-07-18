@def title = "File Input/Output"
@def hascode = true
@def date = Date(2020, 7, 18)
@def rss = "BIDSS: File Input/Output"

@def tags = ["computing", "julia", "file io", "input", "output"]

# 5.6 File Input/Output

\toc

## Documentation
* ~~~ <a href="https://www.oreilly.com/library/view/julia-10-programming/9781788999090/" target="_blank">Julia 1.0 Programming:</a> ~~~ Chapter 8 (I/O, Networking, and Parallel Computing)
    * ~~~ <a href="https://www.oreilly.com/library/view/temporary-access/" target="_blank">Sign in for Brown University access to O'Reilly</a> ~~~  
* Introducing Julia Wikibook: ~~~ <a href="https://en.wikibooks.org/wiki/Introducing_Julia/Working_with_text_files" target="_blank">Working with text files</a> ~~~
* Julia Base: ~~~ <a href="https://docs.julialang.org/en/v1/base/io-network/#Base.readline" target="_blank">I/O and Network</a> ~~~ 

## Theory: Reading and Writing Files

* Note: Using Julia Base functions only

### ~~~ <a href="https://archive.ics.uci.edu/ml/datasets/adult" target="_blank"> UCI Machine Learning Repository: Adult Data Set</a> ~~~ 

* Tabulate and report counts for sex in Adult Data Set

**_Dataset_** (adult.data)

```plaintext
39, State-gov, 77516, Bachelors, 13, Never-married, Adm-clerical, Not-in-family, White, Male, 2174, 0, 40, United-States, <=50K
50, Self-emp-not-inc, 83311, Bachelors, 13, Married-civ-spouse, Exec-managerial, Husband, White, Male, 0, 0, 13, United-States, <=50K
38, Private, 215646, HS-grad, 9, Divorced, Handlers-cleaners, Not-in-family, White, Male, 0, 0, 40, United-States, <=50K
53, Private, 234721, 11th, 7, Married-civ-spouse, Handlers-cleaners, Husband, Black, Male, 0, 0, 40, United-States, <=50K
28, Private, 338409, Bachelors, 13, Married-civ-spouse, Prof-specialty, Wife, Black, Female, 0, 0, 40, Cuba, <=50K
```

**_Input_** (process_file.jl)

```julia:./process_file.jl
# process_file.jl
# Tabulate and report counts for sex in Adult Data Set
# https://archive.ics.uci.edu/ml/datasets/adult

# relative path of file
data_file = open("_data/adult/adult.data", "r")

# absolute path of file
# data_file = open("/Users/user/data/adult/adult.data", "r")

# initialize collection (dictionary for tabulating counts)
gender_dict = Dict()

# read each line, extract sex, and keep track of counts
for line in readlines(data_file)

  # skip empty lines
  if isempty(line)
      continue
   end

  # split line into array, based on delimiter (comma and space)
  line_array = split(line, ", ")

  # tabulate the counts for gender
  gender = line_array[10]
  if haskey(gender_dict, gender)
    gender_dict[gender] += 1
  else
    gender_dict[gender] = 1
  end
end

# report total counts
println("Sort by key (alphabetical):")
for gender in keys(gender_dict)
  println("  $gender = $(gender_dict[gender])")
end

# report total counts by key, in reverse order
println("Sort by key (reverse alphabetical):")
for gender in sort(collect(keys(gender_dict)), rev=true)
  println("  $gender = $(gender_dict[gender])")
end

# report total counts by value, in reverse order (send output to file)
output_file = open("process_file_output.txt", "w")
println("Sort by value (reverse numerical):")
for (count, gender) in sort(collect(zip(values(gender_dict),keys(gender_dict))), rev=true)
  println("  $gender = $(gender_dict[gender])")
  write(output_file, "$gender = $count\n")
end
```

**_Output_**

\output{./process_file.jl}


### From BIDSS Manual (Need to Modify)

**_Terminal_**

```plaintext
$ julia process_file.jl
Sort by key (alphabetical):
  Female = 10771
  Male = 21790
Sort by key (reverse alphabetical):
  Male = 21790
  Female = 10771
Sort by value (reverse numerical):
  Male = 21790
  Female = 10771

$ ls -1
process_file.jl
process_file_output.txt

$ more process_file_output.txt
Male = 21790
Female = 10771
```