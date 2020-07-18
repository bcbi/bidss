# This file was generated, do not modify it. # hide
# Demonstrates use of loops                                                                                    

i = 1

# while loop for incrementing i by 1 from 1 to 3
while i <= 3
  println("while: $i")
  global i += 1     # updating operator; equivalent to i = i + 1
end

# for loop
for j = 1:3
  println("for: $j")
end

for j in 1:3
  println("for again: $j")
end

# nested for loop
for j = 1:3
  for k = 1:3
    println("nested for: $j * $k = $(j*k)")
  end
end