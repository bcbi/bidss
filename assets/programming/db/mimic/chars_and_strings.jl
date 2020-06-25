# This file was generated, do not modify it. # hide
# chars_and_strings.jl

letter = 'b'
word = "good-bye"
subword = "good"

word_length = length(word)
word_first_char = word[1]
word_subword = word[6:8]

println("Length of word: $word_length")
println("First character: $word_first_char")
println("Last three characters: $word_subword")

println("$letter is in $word: $(findfirst(isequal(letter), word))")
println("$subword is in $word: $(occursin(word, subword))")
println("chop off the last character: $(chop(word))")