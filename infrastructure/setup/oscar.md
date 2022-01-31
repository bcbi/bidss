@def title = "Oscar Setup"
@def hascode = true
@def date = Date(2022, 01, 28)
@def rss = "A short description of the page which would serve as **blurb** in a `RSS` feed; you can use basic markdown here but the whole description string must be a single line (not a multiline string). Like this one for instance. Keep in mind that styling is minimal in RSS so for instance don't expect maths or fancy styling to work; images should be ok though: ![](https://upload.wikimedia.org/wikipedia/en/3/32/Rick_and_Morty_opening_credits.jpeg)"

@def tags = ["setup", "oscar"]

# Computing Environment Setup: Oscar @ Brown

\toc

#### Background
~~~ 
<div class="home-box">
    <center><img src = "/assets/setup/oscar/oscar_1.png" alt = "oscar main" class=""></center>
    <br>
    <ul>
        <li><a href="https://docs.ccv.brown.edu/oscar/" target="_blank"> Oscar - Brown University's Cluster </a></li>
        <li><a href="https://docs.ccv.brown.edu/oscar/getting-help/ccv-user-policies" target="_blank"> CCV User Policies </a> </li>
    </ul>
</div>
~~~

#### Getting Started with Oscar

~~~ 
<div class="home-box">
<ul>
    <li> Review <a href="https://docs.ccv.brown.edu/oscar/getting-started" target="_blank"> Quickstart Guide </a>
    <ul>
        <li> OSCAR
        <li> What username and password should I be using?
        <li> Connecting to Oscar for the first time
    </ul>
    <li> Use Brown username and password to login
    <li> For BIOL1555/PHP2561 (Spring 2022), class accounts have been created for those who are registered and did not already have an account

</ul>
</div>
~~~

#### Login Using SSH

~~~ 
<div class="home-box">
<ul>
    <li> Go through instructions in <a href="https://docs.ccv.brown.edu/oscar/connecting-to-oscar/ssh" target="_blank"> SSH (Terminal) </a> documentation
    <ul>
        <li> For Mac, use the <a href="https://support.apple.com/guide/terminal/open-or-quit-terminal-apd5265185d-f365-44cb-8b09-71a064a42125/mac" target="_blank"> Terminal </a> application
        <ul> 
            <li> Under Applications → Utilities → Terminal
            <li> Drag Terminal to Dock
        </ul>
        <li> For Windows, use the PuTTY application
        <ul>
            <li> Install <a href="https://www.brown.edu/information-technology/software/catalog/putty-ssh-client" target="_blank"> PuTTY SSH Client </a> (if needed)
        </ul>
    </ul>
    <li> Use Brown username and password to login 
    <li> Complete <a href="https://ithelp.brown.edu/kb/articles/enable-two-step-verification-for-your-brown-account" target="_blank"> two-step verification </a> with Duo
    <li> After connecting, type the date command and hit enter
    <li> Type exit and hit enter
</ul>
</div>
~~~


#### Login Using VNC

~~~ 
<div class="home-box">
<ul>
    <li> Go through instructions in <a href="https://docs.ccv.brown.edu/oscar/connecting-to-oscar/vnc" target="_blank"> VNC (Virtual Desktop) </a>
    <li> Use Brown username and password to login
    <li> Use default for resource (2 Cores – 7GB Memory – 1 week)
    <li> Explore Desktop (click “Applications” in lower left to see what applications are available)
    <li> Open “Terminal Emulator” Application
    <ul>
        <li> Type the date command a hit enter
        <li> Type exit and hit enter
    </ul>
    <li> Exit session
    <ul>
        <li> Click “EXIT” in upper left corner
        <li> Choose “Kill VNC Session”
    </ul>
</ul>
</div>
~~~

#### Troubleshooting

~~~ 
<div class="home-box">
<ul>
    <li> Review <a href="https://docs.ccv.brown.edu/oscar/getting-help/common-problems" target="_blank"> Common Problems </a> and <a href="https://docs.ccv.brown.edu/oscar/getting-help/faq" target="_blank"> FAQ </a>
    <li> Authentication Failure
    <ul>
        <li> Likely due to wrong password
        <li> Try logging in with username and password again
    </ul>
    <li> On Mac, cannot download and open VNC client
    <ul>
        <li> Go to System Preferences → Security & Privacy
        <li> Select General
        <li> Allow apps downloaded from
    </ul>
    <li> On Mac, cannot open VNC client
    <ul>
        <li> Go to Applications → Utilities
        <li> Open Activity Monitor
        <li> Find and stop Java process
    </ul>
</ul>
</div>
~~~



