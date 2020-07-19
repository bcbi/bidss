@def title = "Analyzing the Adult (Census Income) Data Set"
@def hascode = true
@def date = Date(2020, 7, 16)
@def rss = "BIDSS: Analyzing the Adult (Census Income) Data Set"

@def tags = ["unix"]

# 3.2 Analyzing the Adult (Census Income) Data Set

\toc

## Documentation
* The adult census income dataset is hosted at the ~~~ <a href="https://archive.ics.uci.edu/ml/datasets/Adult" target="_blank">University of California Irvine machine learning repository.</a> ~~~

## Analyzing Adult.data with Unix Commands

### Getting Started

1. Download ~~~ <a href="_data/adult/adult.data" target="_blank">adult.data</a> ~~~ and ~~~ <a href="_data/adult/adult.names" target="_blank">adult.names</a> ~~~ into the data directory
2. Move files to a working directory (see [3.1 Getting Started](/programming/unix/intro) for more detail)
3. Open a Unix shell and navigate to that directory (see [3.1 Getting Started](/programming/unix/intro) for more detail)

Make a copy of the data file and rename:

```
$ ls
adult.data  adult.names
$ cp adult.data adult.txt
$ ls
$ adult.data  adult.names  adult.txt
```

### Explore the Data Files

Count number of lines in file using wc:
```
$ wc adult.data
   32562  488415 3974305 adult.data
$ wc -l adult.txt
   32562 adult.txt
```

Look at contents of a text file (to fill a screen) using more or less:
(Use spacebar or up and down arrows to scroll through pages and then press q to quit):
```
$ more adult.data
$ less adult.data
```

Look at first and last lines of a text file (to fill a screen) using head or tail:
```
$ head adult.data
$ tail adult.data
```

Retrieve rows that contain a particular phrase using grep (MacOS/Linux) or select-string (Windows):
```
$ grep "Bachelors" adult.data
```

Extract a specific field (2) from a delimited file using cut (tab is default delimiter):
(Note that fields in adult.data are separated by both a comma and space (‘, ‘), so there will be an extra space in front)
```
$ cut -f2 -d',' adult.data
```

Combine cut, sort, and uniq to determine how many times each value in field 2 occurs:
(Need to sort first, so that uniq will be able to correctly tabulate values; command only remembers most recent row and current total counts)

```
$ cut -f2 -d',' adult.data | sort | uniq -c
   1
1836  ?
 960  Federal-gov
2093  Local-gov
   7  Never-worked
22696  Private
1116  Self-emp-inc
2541  Self-emp-not-inc
1298  State-gov
  14  Without-pay
$ cut -f2 -d',' adult.data | sort | uniq -c | sort -rn
22696  Private
2541  Self-emp-not-inc
2093  Local-gov
1836  ?
1298  State-gov
1116  Self-emp-inc
 960  Federal-gov
  14  Without-pay
   7  Never-worked
   1
```

## Exercises

1. Determine number of lines that have the value “Tech-support”.

```
$ YOUR COMMAND HERE
     928
```

2. Determine number of times each value in the occupation field occurs.

```
$ YOUR COMMAND HERE
4140  Prof-specialty
4099  Craft-repair
4066  Exec-managerial
3770  Adm-clerical
3650  Sales
3295  Other-service
2002  Machine-op-inspct
1843  ?
1597  Transport-moving
1370  Handlers-cleaners
 994  Farming-fishing
 928  Tech-support
 649  Protective-serv
 149  Priv-house-serv
   9  Armed-Forces
   1
```

3. Determine how to remove the extra space at the beginning of each value in the occupation field.

```
$ YOUR COMMAND HERE
4140 Prof-specialty
4099 Craft-repair
4066 Exec-managerial
3770 Adm-clerical
3650 Sales
3295 Other-service
2002 Machine-op-inspct
1843 ?
1597 Transport-moving
1370 Handlers-cleaners
 994 Farming-fishing
 928 Tech-support
 649 Protective-serv
 149 Priv-house-serv
   9 Armed-Forces
   1
```