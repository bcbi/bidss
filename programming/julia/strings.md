@def title = "Strings, Characters, and Regular Expressions"
@def hascode = true
@def date = Date(2020, 7, 17)
@def rss = "BIDSS: Strings, Characters, and Regular Expressions"
@def hasmath = false

@def tags = ["computing","julia"]

# 6.3 Strings, Characters, and Regular Expressions in Julia

\toc

## Documentation
* Julia
    * Manual: ~~~ <a href="https://docs.julialang.org/en/v1/manual/strings/" target="_blank">Strings</a> ~~~
    * Base: ~~~ <a href="https://docs.julialang.org/en/v1/base/strings/" target="_blank">Strings</a> ~~~
* Regular Expressions
    * ~~~ <a href="https://regex101.com/" target="_blank">Regular Expressions 101</a> ~~~
    * ~~~ <a href="http://www.regexlib.com/" target="_blank">Regular Expressions Library</a> ~~~
    * ~~~ <a href="http://www.regexlib.com/CheatSheet.aspx" target="_blank">Regular Expressions Cheat Sheet</a> ~~~

## Characters and Strings
* `Char` is a single character
* `String` is a sequence of one or more characters (index values start at `1`)

### Some functions that can be performed on strings

| Action                                            | Function                          |
| :------------------------------------------------ | :-------------------------------- |
| get `word` length                                 | `length(word)`                    |
| extract `nth` character from `word`               | `word[n]`                         |
| extract substring `nth-mth` character from `word` | `word[n:m]`                       |
| search for `letter` in `word`                     | `findfirst(isequal(letter), word)`|
| search for `subword` in `word`                    | `occursin(word, subword)`         |
| remove record separator from `word` (e.g., `n`)   | `chomp(word)`                     |
| remove last character from `word`                 | `chop(word)`                      |


Use `typeof()` function to determine type

Input:

```julia:./chars_and_strings.jl
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
println("$subword is in $word: $(occursin(subword, word))")
println("chop off the last character: $(chop(word))")

```

Output:

\output{./chars_and_strings.jl}


## Regular Expressions (regex)

*Regular expressions* are powerful tools for pattern matching and text processing. They are representated ad a `pattern` that consists of a special set of characters to search for in a string `str`.

### Functions

| Action                                            | Function                          |
| :------------------------------------------------ | :-------------------------------- |
| Check if regex matches a string		            | `occursin(r"pattern", str)`       |
| Capture regex matches			                    | `match(r"pattern", str)`          |
| Specify alternative regex			                | `pattern1|pattern2`              |


### Character Class 

*Character class* specifies a list of characters to match (`[...]` where `...` represents the list) or not match (`[^...]`)

| Character Class                                           | `...`                             |
| :-------------------------------------------------------- | :-------------------------------- |
| Any lowercase vowel                                       | `\[aeiou]`                        |
| Any digit                                                 | `[0-9]`                           |
| Any lowercase letter                                      | `[a-z]`                           |
| Any uppercase letter                                      | `[A-Z]`                           |
| Any digit, lowercase letter, or uppercase letter          | `[a-zA-Z0-9]`                     |
| Anything except a lowercase vowel                         | `[^aeiou]`                        |
| Anything except a digit                                   | `[^0-9]`                          |
| Anything except a space                                   | `[^ ]`                            |
| Any character                                             | `.`                               |
| Any word character (equivalent to `[a-zA-Z0-9_]`)         | `\w`                              |
| Any non-word character (equivalent to `[^a-zA-Z0-9_]`)    | `W`                               |
| A digit character (equivalent to `[0-9]`)                 | `\d`                              |
| Any non-digit character (equivalent to `[^0-9]`)          | `\D`                              |
| Any whitespace character (equivalent to `[\t\r\n\f]`)     | `\s`                              |
| Any non-whitespace character (equivalent to `[^\t\r\n\f]`)| `\S`                              |


### Anchors

*Anchors* are special characters that can be used to match a pattern at a specified position

| Anchor                                            | Special Character                 |
| :------------------------------------------------ | :-------------------------------- |
| Beginning of line	                                | `^`                               |
| End of line                                       | `$`                               |
| Beginning of string                               | `\A`                              |
| End of string                                     | `\Z`                              |


### Repetition and Quantifier Characters

*Repetition or quantifier characters* specify the number of times to match a particular character or set of characters

| Repetition                                        | Character                |
| :------------------------------------------------ | :----------------------- |
| Zero or more times                                | `*`                      |
| One or more times                                 | `+`                      |
| Zero or one time                                  | `?`                      |
| Exactly n times                                   | `{n}`                    |
| n or more times                                   | `{n,}`                   |
| m or less times                                   | `{,m}`                   |
| At least n and at most m times                    | `{n.m}`                  |

Input:

```julia:./regex.jl
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

```

Output:

\output{./regex.jl}