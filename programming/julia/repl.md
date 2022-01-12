@def title = "REPL & Packages"
@def hascode = true
@def date = Date(2020, 7, 18)
@def rss = "BIDSS: REPL & Packages"

@def tags = ["computing", "julia"]

# 5.7 REPL & Packages in Julia

\toc

## Documentation
* ~~~ <a href="https://juliadocs.github.io/Julia-Cheat-Sheet/" target="_blank">Julia Cheat Sheet</a> ~~~ (see REPL and Package Management)
* ~~~ <a href="https://docs.julialang.org/en/v1/stdlib/REPL/" target="_blank">Julia REPL</a> ~~~
* ~~~ <a href="https://docs.julialang.org/en/v1/stdlib/Pkg/index.html" target="_blank">Julia Pkg</a> ~~~
* Packages
    * ~~~ <a href="https://juliadata.github.io/CSV.jl/stable/" target="_blank">CSV.jl</a> ~~~
    * ~~~ <a href="https://juliadata.github.io/DataFrames.jl/stable/" target="_blank">DataFrames.jl</a> ~~~

## Using REPL

* Interactive command-line REPL (read-eval-print loop)
* Allows for quick and easy evaluation of Julia statements
* Includes dedicated help `?` and shell modes `;`

### Julia REPL Example (local)

* Type "julia" in terminal to launch REPL

~~~ <img src="/assets/images/programming/computing/repl/repl_ex.png" alt="Julia REPL Example"> ~~~

### Julia REPL Help Pages (local)

* Type "?" to enter help pages within REPL
* Type a function from Julia to read help pages (ex: `println`)

~~~ <img src="/assets/images/programming/computing/repl/repl_help.png" alt="Julia REPL Help Example"> ~~~

### Practice with this web-based Julia REPL
<!-- Could be cool how to add something like this below from https://repl.it/languages -->

~~~ <iframe height="700px" width="100%" src="https://repl.it/@logankilpatrick/TryJulia?lite=true" scrolling="no" frameborder="no" allowtransparency="true" allowfullscreen="true" sandbox="allow-forms allow-pointer-lock allow-popups allow-same-origin allow-scripts allow-modals"></iframe> ~~~

## Installing Packages

* Start Julia REPL by typing the following in Terminal or PowerShell ~~~ <span class="red-text">(Note: do not need to type $ - this is to indicate the shell prompt)</span> ~~~
<!-- ~~~ <div class="indent-code"><code> $ julia </code></div> ~~~ -->
```plaintext
$ julia
```

* Go into REPL mode for Pkg, Julia’s built in package manager, by pressing `]`
```plaintext
$ julia ]
```

```plaintext
$ (@v1.4) pkg>
```
* Update package repository in Pkg REPL
```plaintext
$ (@v1.4) pkg> update
```

* Add packages in Pkg REPL
```plaintext
$ (@v1.4) pkg> add CSV
```
```plaintext
$ (@v1.4) pkg> add DataFrames
```

* Check installation
```plaintext
(@v1.4) pkg> status
            Status `~/.julia/environments/v1.0/Project.toml`
                [336ed68f] CSV v0.4.3
                [a93c6f00] DataFrames v0.17.1
                ...
```

* Get back to the Julia REPL and exit by pressing backspace or ^C.
```plaintext
(@v1.4) pkg>

julia>
```

* To see REPL history
```
$ more ~/.julia/logs/repl_history.jl
```

## Using Packages

```plaintext
julia> using CSV
		julia> using DataFrames

		julia> exit()
```

## Troubleshooting

* If you get an error like: `ERROR: SystemError: opening file "C:\\Users\\User\\.julia\\registries\\General\\Registry.toml"`: No such file or directory
<!-- not sure how to escape backslashes -->
    * Delete `C:\\Users\\User\\.julia\\registries` where User is your computer’s username and try again
    * https://discourse.julialang.org/t/registry-toml-missing/24152
