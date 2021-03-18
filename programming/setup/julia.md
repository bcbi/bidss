@def title = "Getting Started"
@def hascode = true
@def date = Date(2019, 3, 22)
@def rss = "Instructions on how to install the Julia programming language on macOS and Windows."

@def tags = ["setup", "enviornment"]

# Julia

\toc

## macOS 11.X Big Sur
The below instructions have been tested on computers running macOS 11 Big Sur. In order to check the macOS version running onmyour computer, click on the "apple" icon in the top left hand corner of your screen and select "About This Mac." A window will pop up that includes a version number. Confirm you are running Version 10.16.X (where 'X' is any number). These instructions will likely work with earlier versions of macOS as well.

If you are not running macOS 11.X Big Sur, you can upgrade for free following the instructions provided on ~~~<a href="https://support.apple.com/en-us/HT201475" target="_blank">Apple's website</a>~~~. While it may not be necessary for you to perform this upgrade for the following instructions to work, they have only been tested on macOS 11 Big Sur.

1. **Download Julia** \\
Navigate to ~~~<a href="https://julialang.org/downloads/" target="_blank">julialang.org/downloads/</a>~~~ and download the "Current stable release" of Julia for macOS 10.8+ (.dmg)

2. **Install Julia** \\ 
Open the downloaded file (julia-1.5.X-mac64.dmg). A window will pop up with a link to your Applications folder and the Julia software (pictured below). Drag Julia to your applications folder. Next, double click on the Applications folder shortcut to open it.

3. **Create a symbolic link.** Next, you will create a symbolic link to the Julia application you just installed. This will enable your computer to find Julia when you go to use it. From within at Terminal window, type the following commands one at at time, each followed by `return`:
    * `rm -f /usr/local/bin/julia`
    * `ln -s /Applications/Julia-1.5.app/Contents/Resources/julia/bin/julia /usr/local/bin/julia`

4. **Run Julia** \\
    * Type "julia" into terminal and hit `return`
    * Julia should open
    * To quit Julia, type `exit()` and hit `return`

## Debian on Windows 10 (Windows Subsystem for Linux)
First ensure that you have installed Debian and Windows Subsystem for Linux (WSL) as described in ~~~<a href="/programming/setup/wsl/">Linux for Windows</a>~~~.\\

1. **Download and Install Julia** \\
From within the Debian terminal, type the following commands one at a time, each followed `Enter`. If you are prompted for a password, use the password you created the first time you opened Debian: \\
    * `sudo apt-get install wget`
    * `wget https://julialang-s3.julialang.org/bin/linux/x64/1.5/julia-1.5.4-linux-x86_64.tar.gz`
    * `tar xvzf julia-1.5.4-linux-x86_64.tar.gz`
    * `sudo mv julia-1.5.4 /usr/lib`
    * `echo 'export PATH="$PATH:/usr/lib/julia-1.5.4/bin"' | tee -a ~/.bash_profile`
    * `. ~/.bash_profile`

2. **Run Julia** \\
    * Type `julia` and hit `enter`
    * Julia should open
    * To quit Julia, type `exit()` and hit `enter`

\\