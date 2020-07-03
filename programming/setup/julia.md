@def title = "Getting Started"
@def hascode = true
@def date = Date(2019, 3, 22)
@def rss = "A short description of the page which would serve as **blurb** in a `RSS` feed; you can use basic markdown here but the whole description string must be a single line (not a multiline string). Like this one for instance. Keep in mind that styling is minimal in RSS so for instance don't expect maths or fancy styling to work; images should be ok though: ![](https://upload.wikimedia.org/wikipedia/en/3/32/Rick_and_Morty_opening_credits.jpeg)"

@def tags = ["setup", "enviornment"]

# Julia

\toc

## Mac OS X 10.15.X Catalina
The below instructions apply to computers running Mac OS X 10.15 Catalina. In order to check the Mac OS X version running on your computer, click on the "apple" icon in the top left hand corner of your screen and select "About This Mac." A window will pop up that includes a version number. Confirm you are running Version 10.15.X (where 'X' is any number). 

If you are not running OS X 10.15 Catalina, you can upgrade for free following the instructions provided on ~~~<a href="https://support.apple.com/en-us/HT201475" target="_blank">Apple's website</a>~~~. While it may not be necessary for you to perform this upgrade for the following instructions to work, they have only been tested on Mac OS X 10.15 Catalina.

1. **Download Julia** \\ \\ Navigate to ~~~<a href="https://julialang.org/downloads/" target="_blank">julialang.org/downloads/</a>~~~ and download the "Current stable release" of Julia for macOS 10.8+ (.dmg)

2. **Install Julia** \\ \\ Open the downloaded file (julia-1.4.X-mac64.dmg). A window will pop up with a link to your Applications folder and the Julia software (pictured below). Drag Julia to your applications folder. When complete, go to the *File* menu and select *Eject "Julia 1.4.X"*

3. **Create a symbolic link** \\ \\ Next, you will create a symbolic link to the Julia application you just installed. This will enable your computer to find Julia when you go to use it. 
    1. Navigate to your Applications folder
        * Minimize any open windows so that you can see your Desktop.
        * Click once anywhere on your Desktop. The word *Finder* should appear next to the Apple in the top left hand corner of your screen. 
        * Under the *Go* menu select *Go to folder*. A window will popup with a text box. Delete anything that is currently in that text box and type "/Applications", then click *Go*. 
        * A Finder window will popup with all of the applications currently installed on your computer.
    2. Copy the Julia application path
        * Locate the Julia application in the list of Applications (if you have more than one from prior installations, select the highest version number).
        * Right click on it and select *copy*. 
    3. Open Terminal
        * Click the magnifying glass in the top right corner of your screen. This will open a Spotlight Search box. Type "Terminal" and hit "return." This should open up a mostly blank box that has the name of your computer and username in it.
        
    4. Create the symbolic link - **it is very important to pay attention to exact directions including spaces below**
        * Start by typing "ln -s " into the terminal
        * Next, right click and *Paste* the path to the Julia application that you previously copied. This should appear something like "/Applications/Julia-1.4.app"
        * Finally, type " julia" \\ *the final command will look something like:*\\ `ln -s /Applications/Julia-1.4.app julia`
        * If your command looks correct based on the above example, hit *return*

4. **Run Julia** \\ \\
    * Type "julia" into terminal and hit *return*
    * Julia should open

## Windows 10 Pro / Pro Education
\\