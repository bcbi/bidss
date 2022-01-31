# This file was generated, do not modify it. # hide
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