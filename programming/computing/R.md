@def title = "Intro to R"
@def hascode = true
@def date = Date(2019, 3, 22)
@def rss = "A short description of the page which would serve as **blurb** in a `RSS` feed; you can use basic markdown here but the whole description string must be a single line (not a multiline string). Like this one for instance. Keep in mind that styling is minimal in RSS so for instance don't expect maths or fancy styling to work; images should be ok though: ![](https://upload.wikimedia.org/wikipedia/en/3/32/Rick_and_Morty_opening_credits.jpeg)"

@def tags = ["R"]

# 5.11 Intro to R

\toc

## Operators

### Assignment

| Operator       | Description             |
| :------------- | :---------------------- |
| <- or = or <<- | Called Left Assignment  |
| > or ->>       | Called Right Assignment |

### Arithmetic

| Operator            | Description |
| :------------------ | :---------- |
| Addition            | +           |
| Subtraction         | -           |
| Multiplication      | \*          |
| Division            | /           |
| Power (Exponent)    | ^ or \*\*   |
| Negation (for Bool) | !x          |

### Logical

| Operator | Description           |
| :------- | :-------------------- |
| >        | Greater than          |
| <        | Less than             |
| >=       | Greater than or equal |
| <=       | Less than or equal    |
| ==       | Exactly equal         |
| !=       | Not equal to          |
|          |                       | Entry wise or |
| &        | Entry wise and        |

## Basic Objects

### Vectors

| Type      | Example         |
| :-------- | :-------------- |
| Logical   | TRUE, FALSE     |
| Numeric   | 1, 55, 999      |
| Integer   | 1L, 32L, 0L     |
| Complex   | 2 + 3i          |
| Character | "great", "23.4" |

Create a vector

```julia:./vector.jl
R"
apple <- c('red','green','yellow')

print(apple)

# Get the class of the vector.
print(class(apple))

"
```

Output:

\output{./vector.jl}

### Lists

Contain many different types of elements inside

```julia:./list.jl
# Create a list.

R"
list1 <- list(c(2,5,3),21.3)

# Print the list.
print(list1)
"
```

Output:

\output{./list.jl}

### Matrices

Two-dimensional rectangular data set

```julia:./matrix.jl
R"
M = matrix( c('a','a','b','b','c','c'), nrow = 2, ncol = 3, byrow = TRUE)
print(M)
"
```

Output:

\output{./matrix.jl}

### Arrays

Multi-dimensional data set

```julia:./array.jl

R"
a <- array(c('a','b'),dim = c(4,4,2))
print(a)
"
```

Output:

\output{./array.jl}

### Factors

Stores the vector along with the distinct values of the elements in the vector as labels

```julia:./factor.jl
R"
apple <- c('red','green','yellow')
factor_apple <- factor(apple)
print(factor_apple)
"
```

Output:

\output{./factor.jl}

### Data Frames

Tabular data objects

```julia:./dataframe.jl
# Create the data frame.

R"
BMI <- 	data.frame(
   gender = c('Male', 'Female','Female'),
   height = c(182, 141.5, 165),
   weight = c(101,95, 88),
   Age = c(35,43,22)
)
print(BMI)
"
```

Output:

\output{./dataframe.jl}

## Loops

### Repeat Loop

```
repeat {
   commands
   if(condition) {
      break
   }
}
```

### While Loop

```
while (test_expression) {
   statement
}
```

### For Loop

```
while (test_expression) {
   statement
}
```

## Working with Data

### Useful Packages

| Tasks           | Lists                                 |
| :-------------- | :------------------------------------ |
| Load data       | utils, openxlsx, foreign, haven       |
| Manipulate data | tidyverse, dplyr,tidyr                |
| Visualize data  | ggplot2, lattice, plotly              |
| Modeling        | 2 + 3i                                |
| Character       | glmnet, randomForest, caret, survival |

### Import Data

```
#CSV
df <- read.csv("c:/data.csv", header = T)

#Excel
df <- read.xlsx("c:/data.xlsx")
```

For the following examples, use package called datasets

### Data Exploration

Use dataset called mtcars from package datasets

- str(data): gives a quick overview of the rows and columns of the dataset.

```julia:./str.jl
import Pkg; Pkg.add("RCall")
import Pkg; Pkg.add("RDatasets")
using RCall
using RDatasets
mtcars = dataset("datasets","mtcars");
@rput mtcars

R"str(mtcars)"

```

Output:

\output{./str.jl}

- head(data,n) and tail(data,n)

head(): Top n elements

tail(): Bottom n elements

```julia:./call_element.jl

@rput mtcars

R"print(head(mtcars, n = 3))"
R"print(tail(mtcars, n = 3))"

```

Output:

\output{./call_element.jl}

### Descriptive Statistics

- summary(data): gives descriptive statistics for each variable

Common Functions

| Tasks               | Functions  |
| :------------------ | :--------- |
| Mean                | mean()     |
| Standard deviation  | sd()       |
| Variance            | var()      |
| Minimum             | min()      |
| Maximum             | max()      |
| Median              | median()   |
| Range of values     | range()    |
| Sample quantiles    | quantile() |
| Interquartile range | IQR()      |

#### Case of missing values

- na.rm = T

```julia:./mean.jl
@rput mtcars

R"print(mean(mtcars$MPG, na.rm = T))"
```

Output:
\output{./mean.jl}

### Basic Plots

- plot()

```julia:./plot2.jl
using RCall
using RDatasets
mtcars = dataset("datasets","mtcars");

@rput mtcars

R"
png('plot2.png')
plot(mtcars$Disp, mtcars$DRat)
dev.off()
"


```

Output:
\fig{/plot2.png}

- barplot()

```julia:./barplot2.jl

R"
png('barplot2.png')
barplot(mtcars$Cyl,main = 'Number of Cylinders',xlab = 'cyl', col='blue',horiz = FALSE)
dev.off()
"
```

Output:

\fig{/barplot2.png}

- histogram()

```julia:./histogram.jl
R"
png('histogram.png')
hist(mtcars$Disp,main = 'Displacement (cu.in.)',xlab = 'disp', col='red')
dev.off()
"
```

Output:

\fig{/histogram.png}

- boxplot()

```julia:./boxplot2.jl
using RCall
using RDatasets
mtcars = dataset("datasets","mtcars");

@rput mtcars

R"
png('boxplot2.png')
boxplot(mtcars$Disp)
dev.off()
"
```

Output:

\fig{/boxplot2.png}

- qqplot() or qqnorm(): check whether the data is normally distributed
- qqline(): adds a reference line

```julia:./qq.jl
using RCall
using RDatasets
mtcars = dataset("datasets","mtcars");

@rput mtcars

R"
png('qqnorm.png')
qqnorm(mtcars$Disp)
qqline(mtcars$Disp)
dev.off()
"
```

Output:
\output{./qq.jl}
\fig{/qqnorm.png}

## Statistical Analysis

| Analysis             | Continuous Outcome(Y) | Binary Outcome(Y) |
| :------------------- | :-------------------- | :---------------- |
| Correlation Analysis |                       |                   |
| X: Continuous        | cor.test()            | t.test()          |
| X: Categorical       | t.test(), ANOVA()     | chisq.test()      |
| Regression Model     | lm()                  | glm()             |

