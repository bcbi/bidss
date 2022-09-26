@def title = "Getting Started"
@def hascode = true
@def date = Date(2019, 3, 22)
@def rss = "Instructions on how to install the Julia programming language on macOS and Windows."

@def tags = ["setup", "enviornment"]

# Julia

\toc

## Installing Julia

For most users, it is recommended to download the current stable release from [https://julialang.org/downloads/](https://julialang.org/downloads/).
Some developers might wish to use a different version, or to switch between versions.
For this, the [Juliaup version manager](https://github.com/JuliaLang/juliaup) can be useful.

## macOS 11.X Big Sur
The following instructions have been tested on computers running macOS 11 Big Sur.
In order to check the macOS version running on your computer, click on the "apple" icon in the top left hand corner of your screen and select "About This Mac."
A window will pop up that includes a version number. Confirm you are running at least Version 10.16.X (where 'X' is any number). These instructions will likely work with earlier versions of macOS as well.
If you are not running macOS 11.X Big Sur, you can upgrade for free following the instructions provided on ~~~<a href="https://support.apple.com/en-us/HT201475" target="_blank">Apple's website</a>~~~.

1. **Download Julia** \\
Navigate to ~~~<a href="https://julialang.org/downloads/" target="_blank">julialang.org/downloads/</a>~~~ and download the "Current stable release" of Julia for macOS 10.8+ (.dmg)

2. **Install Julia** \\ 
Open the downloaded file (julia-1.6.X-mac64.dmg). A window will pop up with a link to your Applications folder and the Julia software (pictured below). Drag Julia to your applications folder. Next, double click on the Applications folder shortcut to open it.

3. **Create a symbolic link.** \\
Next, you will create a symbolic link to the Julia application you just installed. This will enable your computer to find Julia when you go to use it. From within at Terminal window, type the following commands one at at time, each followed by `return`:\\
* `rm -f /usr/local/bin/julia`
* `ln -s /Applications/Julia-1.6.app/Contents/Resources/julia/bin/julia /usr/local/bin/julia`

4. **Run Julia** \\
* Type "julia" into terminal and hit `return`
* Julia should open
* To quit Julia, type `exit()` and hit `return`

5. **Troubleshooting**
* If you get a `Permission denied` error, rerun the command prepended with `sudo `. You will be prompted to enter your computer password.

## Debian on Windows 10 (Windows Subsystem for Linux)
First ensure that you have installed Debian and Windows Subsystem for Linux (WSL) as described in ~~~<a href="/programming/setup/wsl/">Linux for Windows</a>~~~.\\

1. **Download and Install Julia** \\
From within the Debian terminal, type the following commands one at a time, each followed `Enter`. If you are prompted for a password, use the password you created the first time you opened Debian: \\
* `sudo apt-get install wget`
* `wget https://julialang-s3.julialang.org/bin/linux/x64/1.6/julia-1.6.0-linux-x86_64.tar.gz`
* `tar xvzf julia-1.6.0-linux-x86_64.tar.gz`
* `sudo mv julia-1.6.0 /usr/lib`
* `echo 'export PATH="$PATH:/usr/lib/julia-1.6.0/bin"' | tee -a ~/.bash_profile`
* `. ~/.bash_profile`

2. **Run Julia** \\
* Type `julia` and hit `enter`
* Julia should open
* To quit Julia, type `exit()` and hit `enter`

3. **Troubleshooting**
* If you already have an older version of Julia installed, you can follow the instructions above to install a newer version. However, you will need to manually edit your `.bash_profile` file to remove the link to the older version. To do this:
    * `sudo apt-get install vim`
    * `vim ~/.bash_profile`
    * Using the arrow keys, move your cursor to the line of the file that has a link to the old version of Julia, hit `d` twice (this should delete the corresponding line). Save the file by typing `:wq` and then `enter`. Close and reopen Debian and the new version of Julia should open when you run `julia`.

\\
