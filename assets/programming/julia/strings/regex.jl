# This file was generated, do not modify it. # hide
# regex.jl
number1 = "(555)123-4567"
number2 = "123-45-6789"

# check if matches
if occursin(r"\([0-9]{3}\)[0-9]{3}-[0-9]{4}", number1)
   println("match!")
end

if occursin(r"\([0-9]{3}\)[0-9]{3}-[0-9]{4}", number2)
  println("match!")
else
  println("no match!")
end

# capture matches
# use parentheses to "capture" different parts of a regular 
# expression for later use the first set of parentheses corresponds 
# to index 1, second to index 2, etc.

number_details = match(r"\(([0-9]{3})\)([0-9]{3}-[0-9]{4})", number1)

if number_details != nothing
   area_code = number_details[1]
   phone_number = number_details[2]

   println("area code: $area_code")
   println("phone number: $phone_number")
end