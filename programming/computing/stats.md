@def title = "Statistics"
@def hascode = true
@def date = Date(2020, 6, 18)
@def rss = "A short description of the page which would serve as **blurb** in a `RSS` feed; you can use basic markdown here but the whole description string must be a single line (not a multiline string). Like this one for instance. Keep in mind that styling is minimal in RSS so for instance don't expect maths or fancy styling to work; images should be ok though: ![](https://upload.wikimedia.org/wikipedia/en/3/32/Rick_and_Morty_opening_credits.jpeg)"

@def tags = ["setup", "enviornment"]

# 5.9 Statistics and Machine Learning

\toc

## Documentation
* ~~~ <a href="https://juliadocs.github.io/Julia-Cheat-Sheet/" target="_blank">Julia Cheat Sheet</a> ~~~
* ~~~ <a href="http://juliastats.github.io/" target="_blank">Julia Stats</a> ~~~
* Packages
    * ~~~ <a href="https://juliadata.github.io/CSV.jl/stable/" target="_blank">CSV.jl</a> ~~~
    * ~~~ <a href="https://juliadata.github.io/DataFrames.jl/stable/man/getting_started.html" target="_blank">DataFrames.jl</a> ~~~
    * ~~~ <a href="http://juliastats.github.io/Distributions.jl/latest/starting.html" target="_blank">Distributions.jl</a> ~~~
    * ~~~ <a href="http://juliastats.github.io/HypothesisTests.jl/dev/" target="_blank">HypothesisTests.jl</a> ~~~
* ~~~ <a href="https://docs.julialang.org/en/v1/stdlib/Statistics/index.html" target="_blank">Statistics Module</a> ~~~
* ~~~ <a href="https://docs.julialang.org/en/v1/stdlib/Random/index.html" target="_blank">Random Number Generator</a> ~~~

## Getting Started

* Start Julia REPL (Read/Evaluate/Print/Loop) by typing the following in Terminal or PowerShell:

```
$ julia
```

* Go into REPL mode for Pkg, Julia’s built in package manager, by pressing ‘]’:

```
julia> ]
(@v1.4) pkg>
```

* Update package repository in Pkg REPL

```
(@v1.4) pkg> update)
```

* Add packages in Pkg REPL

```
(@v1.4) pkg> add CSV
(@v1.4) pkg> add DataFrames
(@v1.4) pkg> add Distributions
(@v1.4) pkg> add HypothesisTests
```

* Get back to the Julia REPL and exit by pressing backspace or ^C

```
(@v1.4) pkg>
julia> using CSV
julia> using DataFrames
julia> using Distributions
julia> using HypothesisTests
julia> exit()
```

