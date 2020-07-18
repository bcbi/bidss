@def title = "Introduction to UNIX"
@def hascode = true
@def date = Date(2020, 7, 16)
@def rss = "BIDSS: Introduction to UNIX"

@def tags = ["unix"]

# 3.1 Introduction to UNIX

\toc

## What is Unix?
Unix is a family of operating systems officially trademarked as UNIX®. These operating systesms are computing environments that are optimized for multi-tasking across multiple users. The original system was developed by AT&T in 1969 as a text only system. There are many Unix variants or Unix-like systems (e.g. GNU/Linux, Sun Solaris, IBM AIX, and Mac OS X). ON Windows, Cygwin is a program that provides a Unix-like environment.

The main components of a Unix operating system include:
* Kernel – bridge between hardware (i.e. silicon) and application (i.e. software)
* Shell – command line interface to enable user interaction with the system
* File System – the organization structure for how files are stored
 
## Unix File System
 
The Unix file system organizes files and directories into a hierarchical structure like root system of a tree.

* The "root" directory (e.g. "/") is the top of the hierarchy
    * Standard directories within the root directory
    * `/bin` and `/usr` contain commands needed by system administrators and users
    * `/etc` contains system-wide configuration files and system databases
    * `/home` contains the home directory (`~`) for each user (in some systems, the location of home directories may be in a different location such as `/users` or `/Users`)
* When traversing directories
    * working directory (.) is the directory that a user currently is in
    * parent directory (..) is the directory above the working directory
    * path or pathname specifies where a user is in the file system
    * full path or absolute path points to the same location regardless of the working directory (i.e., it is written in reference to the root directory)
    * relative path is the path relative to the working directory


If the working directory is the `home` directory for `bcbi`, the full path for the `course` directory is `/home/bcbi/course` while the relative path is just `course`. A schematic of this is below:

![Unix File System Schematic](/_images/unix/intro/unix_filesystem_bcbi.png)

If `code` then becomes the working directory, the full path for the data directory from there is `/home/bcbi/course/data` while the relative path is `../data`. A schematic of this is below:

![Unix File System Schematic](/_images/unix/intro/unix_filesystem_code.png)

## Unix Shell
 
The Unix shell provides a command line interface for interacting with the operating system and is where commands are entered. An example below is a Mac OS X Terminal Shell logged into a RedHat Linux Server as `user_name`.

![Unix Shell](/_images/unix/intro/unix_shell.png)

* The prompt may look different depending on your shell (e.g., Bourne shell [sh], C shell [csh], or Bourne-Again shell [bash])
* Default prompts  include `$` and `%`
* The prompt `#` typically appears when logged in as the `superuser` or `root user` who can do anything on the system, so should be restricted to trusted users, used only when necessary and with caution. While you may be able to do this on a system you control, you are unlikely to ever have root priviledges on a shared computing resource (e.g. Oscar or Stronghold at Brown University)
* The prompt can be configured to include additional information such as hostname, username, and pathname (e.g., `computer:/home/bcbi/course bcbi $`).

## Unix Commands

There are many Unix commands. Some commands will display output and then return to the shell prompt while others will just return to the shell prompt to indicate that it has executed the last command. Unix command syntax:

* Case-sensitive (pwd ≠ PWD)
* May involve one or more arguments
* Argument may be an option (or flag or switch) for that command
* Argument may be a file or directory

To get to a Unix shell on your computer:
* For Mac, launch the Terminal application (under Applications → Utilities → Terminal)
* For Linux, launch the Terminal application 
* For Windows, launch the PowerShell application

```
#Run applications like cal:
$ cal
    January 2020
Su Mo Tu We Th Fr Sa
          1  2  3  4
 5  6  7  8  9 10 11
12 13 14 15 16 17 18
19 20 21 22 23 24 25
26 27 28 29 30 31
```

Get help from manual (man) pages on commands:
(Use spacebar or up and down arrows to scroll through pages and then press `q` to quit)
```
$ man cal
```

Determine what directory you are currently in with pwd (present working directory):
```
$ pwd
/home/bcbi
```
 
Get a listing of current directory contents using ls:
```
$ ls
```

Create course directory using mkdir:
(Replace course with class name - e.g., methods2020 or biol6535)
```
$ mkdir course
```

Get a listing of current directory contents with details using ls:
```
$ ls
course
$ ls -l
total 4
drwxrwxr-x. 2 bcbi bcbi 4096 Jan 30 12:53 course
```

Change into course directory using cd:
(Replace course with class name - e.g., methods2020 or biol6535)
```
$ cd course
$ pwd
/home/bcbi/course
```


## Working with Data

Using the Unix commands: `more`, `less`, `head`, `tail`, `wc`, `cut`, `sort`, `uniq`, `grep`, `sed`, and `awk`
 
* Adult (Income Census) Data Set
* MIMIC-III Demo Data Set

### File and Directory Navigation

| Command           | Action (with sftp specific notes)                                                                         |
| :---------------- | :-------------------------------------------------------------------------------------------------------- |
| `ls`              | directory listing (remotely in sftp)                                                                      |
| `lls`             | local directory listing (sftp only)                                                                       |
| `ls -al`          | formatted listing with hidden files                                                                       |
| `cd dir`          | change directory to dir (remotely in sftp)                                                                |
| `lcd dir`         | change local directory to dir (sftp only)                                                                 |
| `cd`              | change to home (remotely in sftp)                                                                         |
| `pwd`             | show current directory (remote directory in sftp)                                                         |
| `lpwd`            | show current local directory                                                                              |
| `mkdir dir`       | create a directory dir                                                                                    |
| `rm file`         | delete file                                                                                               |
| `rm -r dir`       | delete directory dir                                                                                      |
| `rm -f file`      | force remove file                                                                                         |
| `rm -rf dir`      | force remove directory dir *                                                                              |
| `cp file1 file2`  | copy file1 to file2                                                                                       |
| `cp -r dir1 dir2` | copy dir1 to dir2; create dir2 if it doesn't exist                                                        | 
| `mv file1 file2`  | rename or move file1 to file2 if file2 is an existing \\n directory, moves file1 into directory file2     |
| `put file`        | copy local file to current remote directory (sftp only)                                                   |
| `get file`        | copy remote file to current local directory (sftp only)                                                   |

### System Information

| Command           | Action                            |
| :---------------- | :-------------------------------- |
| `date`            | show the current date and time    |
| `cal`             | show this month's calendar        |
| `uptime`          | show current uptime               |
| `who`             | display who is online             |
| `whoami`          | who you are logged in as          |
 
### Analyzing and Searching Files

| Command                   | Action                                                                                            |
| :------------------------ | :------------------------------------------------------------------------------------------------ |
| `wc`                      | counts the number of lines, words, bytes in file                                                  |
| `wc -l`                   | counts the number of lines in file                                                                |
| `cut -f1 file`            | cut out selected portions (first head ) of each \\line of a tab-delimited file                    |
| `cut -d\| -f1,2,3 file`   | cut out columns 1,2, and 3 from a pipe-delimited file                                             |
| `sort file`               | sort lines of text file file                                                                      |
| `uniq file`               | report or filter out repeated lines in a file                                                     |
| `grep pattern files`      | search for pattern in files                                                                       |
| `grep -v pattern files`   | search for lines that do not contain pattern in files                                             |
| `awk pattern file`        | manipulate data and generate reports                                                              |
| `sed pattern file`        | text stream editor                                                                                |

### Common Shortcuts 

| Keys      | Action                                                                                            |
| :-------- | :------------------------------------------------------------------------------------------------ |
| `Ctrl+A`  | go to beginning of current command                                                                |
| `Ctrl+E`  | go to end of current command                                                                      |
| `Ctrl+C`  | halts the current command                                                                         |
| `Ctrl+Z`  | stops the current command, resume with fg in the foreground or bg in the background               |
| `Ctrl+D`  | log out of current session, similar to exit                                                       |
| `Ctrl+W`  | erases one word in the current line                                                               |
| `Ctrl+U`  | erases the whole line                                                                             |
| `Ctrl+R`  | type to bring up a recent command                                                                 |
| `!!`      | repeats the last command                                                                          |
| `exit`    | log out of current session                                                                        |

### File Content Browsing

| Command       | Action                                                                                                                    |
| :------------ | :------------------------------------------------------------------------------------------------------------------------ |
| `less file`   | displays file contents one screen at a time (similar to \\`more` but enables mouse scrolling because *less is more*)      |
| `head file`   | displays the first few lines of a file.                                                                                   |
| `tail file`   | displays the last few lines of a file.                                                                                    |

### File Permissions

| Command               | Action                                                                                                                                                |
| :-------------------- | :---------------------------------------------------------------------------------------------------------------------------------------------------- |
| `chmod octal file`    | change the permissions (in either a ssh or sftp session)\\ of file to octal, which can be found separately for \\user, group, and world by adding:    |
| `4`                   | read (r)                                                                                                                                              |
| `2`                   | write (w)                                                                                                                                             |
| `1`                   | execute (x)                                                                                                                                           |
