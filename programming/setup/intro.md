@def title = "Getting Started"
@def hascode = true
@def date = Date(2019, 3, 22)
@def rss = "A short description of the page which would serve as **blurb** in a `RSS` feed; you can use basic markdown here but the whole description string must be a single line (not a multiline string). Like this one for instance. Keep in mind that styling is minimal in RSS so for instance don't expect maths or fancy styling to work; images should be ok though: ![](https://upload.wikimedia.org/wikipedia/en/3/32/Rick_and_Morty_opening_credits.jpeg)"

@def tags = ["setup", "enviornment"]

# Overview
This page provides an overview of the setup required to perform the programming exercises in BIDSS. Subsequent pages provide detailed step by step instructions for setup for each of the sections that follow.

\toc

## Computing Environment
A computing environment is required to complete the programming exercises presented in BIDSS. All can be completed on a personal computer running Mac OS X, Windows, or a distribution of Linux. Alternatively, it should be possible to complete the exercises on most university shared computing cluster environments (e.g. ~~~<a href="https://docs.ccv.brown.edu/oscar/" target="_blank">Oscar</a>~~~ and ~~~<a href="https://docs.ccv.brown.edu/stronghold/" target="_blank">Stronghold</a>~~~ at Brown University). 

Detailed instructions for environment setup on a personal computer are provided for the latest version of Mac OS X 10.15 Catalina and Windows 10 Pro / Pro Education editions. Alternative or earlier versions of Mac OS X and Windows may require a modified configuration. In particular, Windows 10 Home edition presents some challenges that we will attempt to make clear throughout BIDSS.
 
## Programming Languages
A programming language is a set of rules and syntax that can be used to compose instructions that are interpretable by a computer to carry out defined tasks. ~~~<a href="https://brown.edu/go/bcbi" target="_blank">The Center for Biomedical Informatics at Brown University</a>~~~ has chosen Julia as our primary programming language for teaching and carring out informatics and data science research.

### The Julia Language
~~~<a href="https://julialang.org" target="_blank">Julia</a>~~~ is a fast, dynamic, easy to use programming language designed to deliver high performance with just-in-time compilation. This results in a programming experience familiar to Python and R users with ~~~<a href="https://julialang.org/benchmarks/" target="_blank">10-100X the speed</a>~~~. In addition, R and Python code can be efficiently embedded within Julia programs to take advantage of existing R and Python packages. As Julia is a much newer language than both R and Python, it can make sense to tap into their mature package libraries for certain tasks. Find out more at ~~~<a href="https://julialang.org" target="_blank">julialang.org</a>~~~ or the ~~~<a href="https://en.wikipedia.org/wiki/Julia_(programming_language)" target="_blank">Julia Wikipedia page</a>~~~.

### The R Project for Statistical Computing
~~~<a href="https://r-project.org" target="_blank">R</a>~~~ is a statistical computing and graphics language. The Comprehensive R Archive Network (CRAN) contains a large library of user-created packages that implement a wide range of informatics and data science methods. Find out more at ~~~<a href="https://r-project.org" target="_blank">r-project.org</a>~~~ or the ~~~<a href="https://en.wikipedia.org/wiki/R_(programming_language)" target="_blank">R Wikipedia page</a>~~~.

### Python
~~~<a href="https://python.org" target="_blank">Python</a>~~~ is an interpreted, high-level, general-purpose programming language with a rich library of modules and packages packages, many of which are designed for informatics and data science research. Find out more at ~~~<a href="https://python.org" target="_blank">python.org</a>~~~ or the ~~~<a href="https://en.wikipedia.org/wiki/Python_(programming_language)" target="_blank">Python Wikipedia page</a>~~~.

## Additional Software

### Text Editor
Programming exercises are best written using a text editor. We recommend ~~~<a href="https://code.visualstudio.com/" target="_blank">Microsoft Visual Studio Code</a>~~~ which is available for Mac, Windows, and Linux operating systems.

### FTP Client
If you are working in a server environment that requires you to transfer files via FTP, we recommend ~~~<a href="https://filezilla-project.org/" target="_blank">FileZilla</a>~~~, a free FTP client with a graphical user interface for Mac, Windows, and Linuix operating systems.

\\