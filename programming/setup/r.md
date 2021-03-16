@def title = "Getting Started"
@def hascode = true
@def date = Date(2019, 3, 22)
@def rss = "A short description of the page which would serve as **blurb** in a `RSS` feed; you can use basic markdown here but the whole description string must be a single line (not a multiline string). Like this one for instance. Keep in mind that styling is minimal in RSS so for instance don't expect maths or fancy styling to work; images should be ok though: ![](https://upload.wikimedia.org/wikipedia/en/3/32/Rick_and_Morty_opening_credits.jpeg)"

@def tags = ["setup", "enviornment"]

# R Project for Statistical Computing Installation

\toc

# macOS
1. Download and install the latest version of The R Project for Statistical computing for macOS ~~~<a href="https://cloud.r-project.org/" target="_blank">here</a>~~~.
2. For an integrated development environment (IDE) / graphical interface, you can also download and install R Studio from ~~~<a href="https://rstudio.com/products/rstudio/download/#download" target="_blank">here</a>~~~.

# Debian on Windows 10 (Windows Subsystem for Linux)
First ensure that you have installed Debian and Windows Subsystem for Linux (WSL) as described in ~~~<a href="/programming/setup/wsl/">Linux for Windows</a>~~~.\\
From within the Debian terminal, type the following commands one at a time, each followed `Enter`:
1. `sudo apt-get update`
2. `sudo apt install r-base r-base-dev`
3. Confirm installation worked by running R: type `R` followed by `Enter` in the Debian terminal. R should launch. Quit R by typing `q()` followed by `Enter`.

# Windows (not inside Windows Subsystem for Linux)
1. Download and install the latest version of The R Project for Statistical computing for Windows ~~~<a href="https://cloud.r-project.org/" target="_blank">here</a>~~~.
2. For an integrated development environment (IDE) / graphical interface, you can also download and install R Studio from ~~~<a href="https://rstudio.com/products/rstudio/download/#download" target="_blank">here</a>~~~.