
# Working Directory
?getwd()	 # show current working directory
?setwd()	 # set working directory

?install.packages()	# downloads package from CRAN
?library()         	# loads package into the R environment

install.packages("swirl")
library(swirl)

# Open "R Programming, Lesson 1: Basic Building Blocks"
swirl()

# Open and go through the lesson:
# 1: R Programming: The basics of programming in R
# 1: Basic Building Blocks

# Leave swirl by using the bye() function
bye()

5 + 7
x <- 5 + 7
y <- x - 3
z <- c(1.1, 9, 3.14)
?c
c(z, 555, z)
z * 2 + 100
my_sqrt <- sqrt(z - 1)
my_sqrt
my_div <- z/my_sqrt
my_div
c(1, 2, 3, 4) + c(0, 10)
c(1, 2, 3, 4) + c(0, 10, 100)
z * 2 + 1000
my_div


# Examples of Basic R Syntax
5			# a constant
my_sqrt 	# a variable
mean(z)	  	# a function (which is also an object!)
?('<-')		# an operator (a type of function)
?('if')		# a control statement (a type of function)

# Constants
42		  # built-in constants (numeric)
letters   # built-in constants (characters)

# Variables
my_town  <- "Amherst"	# variable created by user

# Basic Data Classes
?character  # strings
?integer    # whole numbers
?numeric    # real numbers; aka "double"
?logical    # TRUE or FALSE
?complex    # complex numbers; i.e., (n + ni)
?raw        # raw byte value

# Special Values
TRUE 	# true
FALSE 	# false
NA		# not available
NaN		# not a number
NULL    # list of zero length (an empty list)
Inf  	# infinity
-Inf  	# negative infinity

# Built-in Constants (Numeric)
1.3				# numeric sequence with or without a decimal
5L				# L suffix = integer class
2.1e-10			# numeric seq, followed by e or E, then 10 or -10
pi				# 3.14159265…

# Built-in Constants (Characters)
letters 		# 26 lowercase letters
LETTERS			# 26 uppercase letters
month.name		# Month names
month.abb		# Month names abbreviations (3 letters)

int <- 5L    # an L suffix coerces numeric elements to integer
class(int)
num <- c(1.1, 9, 3.14)
class(num)

alpha <- c("m", "a", "s", "s")
class(alpha)
tf <- c(TRUE, FALSE, TRUE)  # notice no quotes
class(tf)

# Atomic Vectors
my_log  <- c(TRUE, FALSE, FALSE) 					# logical
my_int  <- c(1L, 6L, 17L)        					# integer
my_num  <- c(1.4, 3.15, 17.082)  				    # numeric
my_chr  <- c("Amherst", "Site 27", "Ephemeroptera") # character

# Atomic Vectors
my_log  <- c(TRUE, FALSE, FALSE, 6L)   # add integer
class(my_log)	# coerced into integer
my_int  <- c(1L, 6L, 17L, 37.621)   # add numeric
class(my_int)	# coerced into numeric
my_num  <- c(1.4, 3.15, 17.082, "Summer") # add character
class(my_num)	# coerced into character
my_chr  <- c("Amherst", "Site 27", "Ephemeroptera", TRUE)
class(my_chr)  # stays character

# Tests for Classes
is.logical(c(TRUE, FALSE, FALSE))
is.integer(c(1L, 6L, 17L))
is.numeric(c(1.4, 3.15, 17.082))
is.character(c("Amherst", "Site 27", "Ephemeroptera"))

# Tests for NA
is.na(c(TRUE, FALSE, FALSE))
my_log <-  c(NA, TRUE, NA, FALSE, FALSE)
is.na(my_log)	# returns vector
class(my_log) 	# NAs do not affect classes

my_int  <- c(NA, 1L, NA, 6L, 17L)
is.na(my_int)
class(my_int) 	# NAs do not affect classes

## Functions -------------------------------------------------------------------

# R Base Functions
builtins() 		# list all built-in objects (mostly functions!)
class(print)	# function class is "function"
class(`+`)		# operator class is "function"
class(`if`)		# control class is "function"

# Unary versus binary operations
 -3     # Unary operations have one operand
8 - 4	# Binary operations have two operands

# Arithmetic Operators Examples
 +3     # positive (unary)
 -7	  	# negative (unary)
2 + 4	# addition
7 -	2   # subtraction
9 / 3   # division
2 * 6	# multiplication
5 ^ 2   # exponentiation

# Logical Operators (Return TRUE or FALSE)
?`<`     # less greater than
?`>`     # less greater than
?`<=` 	 # less than or equal to
?`>=`	 # greater than or equal to
?`==`	 # equal to
?`!=` 	 # not equal to
?`&`     # and (vectorized)
?`&&` 	 # and (non-vectorized)
?`|`  	 # or (vectorized)
?`||` 	 # or (non-vectorized)
?`%in%`  # match

# Special Operators
?`!`      # negation
?`~`	  # used for model formulae
?`%%`     # special operators (infix type)

# Logical Operators Examples
3 < 5
7 > 4
7 <= 7
7 >= 7
3 == 3L
4 != 5
TRUE & TRUE
FALSE && c(TRUE, FALSE, TRUE)
TRUE | FALSE
FALSE || c(TRUE, FALSE, TRUE)
"g" %in% c("e", "f", "g")
!"z" %in% c("e", "f", "g")

# Assignment/Creation Operators
?`:`	 # create sequence
?`<-` 	 # assign in current environment
?`<<-`	 # assign in parent environment
?`=`	 # assign (use inside of function arguments)

# Assignment/Creation Operators
3:7 			   # create sequence
my_var <- "g"	   # assign in current environment
glob_var <<- 5.12  # assign in parent environment
list(x = 1:4) 	   # assign (use inside of function arguments)

# Indexing/Extraction Operators
?`[`	  # index (returns list)
?`[[`  # index (returns list component)
?`$`	  # extract named column or component
?`::`	  # use a particular function from a package

# Create a list
lt <- list(x = 1:4, "a", c(TRUE, FALSE, TRUE), c(2.3, 5.9))

# Indexing/Extraction Operators
lt[1] 	 		 # index (returns list)
lt[[1]]  		 # index (returns list component)
lt$x	 		 # extract named column or component
stats::ecdf	 	 # use a particular function from a package

# Example of Infix Operator and Matching Function
6 + 2	   # infix operator
`+`(6, 2)  # function, need backticks around name

# Example of Infix Operator and Matching Function
4:9		   # infix operator
`:`(4, 9)  # function, need backticks around name

# Example of Infix Operator and Matching Function
var_1 <- "Amherst"		# infix operator
`<-`(var_1, "Amherst")  # function, need backticks around name
var_1

# Basic Function Layout
# output <- function_name(arguments)

# Example of Function Arguments
round(6.248) # press tab to see function’s arguments
round(6.248, digits = 0) # equivalent to previous line
round(6.248, digits = 1) # rounds to 1 decimal places
round(6.248, digits = 2) # rounds to 2 decimal places

# Examples of Arguments
?c     		# "..." are objects to combine
?print  	# x = R object; "..." = additional arguments
?length		# x = R object
?rep.int	# x = vector; times = number of times to repeat
?Sys.Date	# no arguments

# Mathematical Functions
?abs  	  	# absolute value
?log 	  	  # log to base e
?exp 	  	  # antilog
?log 	  	  # log to base n
?log10 	  	# log to base 10
?sqrt 	    # square root
?cos     	  # cosine of x in radians; also sin(x), tan(x)
?factorial 	# x!
?floor	  	# greatest integer less than x
?ceiling   	# smallest integer greater than x
?trunc 	  	# closest integer to x between x and 0
?round   	  # round the value of x to an integer
?signif  	  # give x to 6 digits scientific notation

# Mathematical Functions (Examples)
abs(-23)     	# 23
log(5) 		 	  # 1.609438
exp(4) 		 	  # 54.59815
log(6, 2) 	 	# 2.584963
log10(7) 	 	  # 0.845098
sqrt(25) 	 	  # 5
cos(pi)      	# -1
factorial(4) 	# 24
floor(6.23) 	# 6
ceiling(9.19) # 10
trunc(-3.2) 	# -3
round(3.2178, digits=2)  # 3.22
signif(4/3, digits=6)  	 # 1.33333

# Show Current Options
options()			    # prints all option settings

# Options Example
signif(4/3, digits = 10) # default option: print to 6 digits
options(digits = 10)	 # controls the number of digits to print
signif(4/3, digits = 10)  # now shows out to 10 digits

# Vectors of sequences
c(2, 4, 6)
2:6
seq(from = 2, to = 3, by = 0.5)
rep(1:2, times = 3)
rep(1:2, each = 3)

# Open "R Programming, Lesson 3: Sequence of Numbers"
swirl()

# Open and go through the lesson:
# 1: R Programming: The basics of programming in R
# 3: Sequence of Numbers

# Leave swirl by using the bye() function
bye()

# Control Statements
?'if'  		# if(cond) expr
?'else'  	# if(cond) expr1  else  expr2
?'for'  	# for(var in seq) expr
?'while' 	# while(cond) expr
?'repeat'	# repeat expr
?'break'	# break expr
?'next'		# repeat expr

# If Statement (example)
i <- 6
if (i > 5){
  print("Yes")
}

# If Else Statement (example)
if (i > 7){
  print("Yes")
} else {
  print("No")
}

# For Loop (example)
for (i in 1:4){
  j <- i+10
  print(j)
}

# While Loop (example)
i <- 1
while (i < 5){
  print(i)
  i <- i + 1
}

# Create sample
ints <- sample(1:10, size = 10, replace = FALSE)
ints

# Create Logical Vectors
ints > 5
ints < 7

# Determine Vector Positions Using Logical Vectors
which(ints > 5)
which(ints < 7)

# Test for Any or All in Logical Vectors
any(ints < 0)
all(ints > 0)

# Create vector
x <- 6:10

# Equal to or not equal to
x[x == 7]
x[x != 7]
x[x == 6 | x == 8]

# Greater/less than
x[x > 7]
x[x < 8]
x[x > 7 & x < 9]

## Data Structures -------------------------------------------------------------

# Create a vec
vec <- seq(from = 4, to = 16, by = 4)

# Create a matrix
mt <- matrix(1:16, nrow=4)

# Create a data frame
df <- data.frame(x = c(4:7), y = c(letters[1:4]), x2 = c(11:14),
z = c(TRUE, FALSE, FALSE, TRUE))

# Create a list
lt <- list(1:3, "a", c(TRUE, FALSE, TRUE), df, c(2.3, 5.9))

# Lists
lt <- list(1:3, "a", c(TRUE, FALSE, TRUE), df, c(2.3, 5.9))
lt[4]        # single bracket returns a list
lt[[4]]      # double bracket returns list components

# Matrices / Data frames
mt <- matrix(1:16, nrow = 4)
mt[1, 2]	# returns element
mt[2, ] 	# returns row
mt[, 3]		# returns column

# Names: Data frames
df <- data.frame(x = c(4:8), y = c(letters[1:5]), z = c(TRUE,
  FALSE, FALSE, TRUE, TRUE))
df[3, 2]  # returns element
df[1, ]		# returns row
df[, 3]		# returns column

# Object Attributes
?length		  # get length of objects
length(vec) # number of elements in vector
length(lt)	# number of elements in list
length(mt)	# number of elements in matrix
length(df)	# number of columns in data frame

# Object Attributes
?nrow()      # number of rows in matrix or data frame
nrow(mt)	# number of rows in matrix
nrow(df)	# number of rows in data frame

# Object Attributes
?ncol      # number of columns in matrix or data frame
ncol(mt)	# number of columns in matrix
ncol(df)	# number of columns in data frame

# Attributes: dim()
?dim  	# number of rows, columns in matrix or data frame
dim(mt)	# number of rows, columns in matrix
dim(df)	# number of rows, columns in data frame

# Change Matrix Dimensions
mt <- matrix(1:15, nrow = 3, ncol = 5)  # create matrix
dim(mt)		 		# show dimensions
dim(mt) <- c(5, 3)	# set dimensions
dim(mt)				# show new dimensions

# Names
?names		# get or set names of objects (of same length)
?colnames  	# get or set columns names of matrix or data frame
?rownames	# get or set row names of matrix or data frame

# Names: Vector and List
vec <- 5:8  # create vector
names(vec) # should be NULL
names(vec) <- c("v1",  "v2",  "v3",  "v4") # set names of vector
names(vec) # new names
lt <- list(1:3, "a", c(TRUE, FALSE, TRUE), vec, c(2.3, 5.9)) # list
names(lt)  # should be NULL
names(lt) <- c("p1", "p2",  "p3",  "p4",  "p5") # set names of list
names(lt)  # new names

# Indexing by Name: Vectors and Lists
vec["v1"]	  # Index vector using name in brackets
lt["p1"]  	# Index list using name in brackets
lt$p2    	  # Index list using $name

# Names: Matrices
mt <- matrix(1:15, nrow = 3, ncol = 5)  # create matrix
names(mt) <- letters[1:15] 	# set names of matrix
mt["d"]  # locate element by name

# Names: Data frames
df <- data.frame(nums = c(1:4), lets = c("a", "b", "c", "c"),
  logs = c(T, F, T, T))					# create 3-col data frame
colnames(df)				 			# column names for df
names(df)				 				# column names for df
rownames(df) <- c("r1",  "r2",  "r3",  "r4") 	# set row names
rownames(df)							# get row names

# Factor and Levels
?factor() 	# encode a vector to store categorical variables
?levels()	# get or set allowed values in factor

# Vector
age <- c("adult", "fledgling", "fledgling", "adult")

# Vector Converted to Factor
age_f <- factor(age)
age_f
levels(age_f)
as.integer(age_f)
as.integer(age)   	# throws a Warning

# Factor Examples
age <- c("adult", "fledgling", "adult", "adult")
age <- factor(age)  # encodes a vector as a factor
age
age2 <- factor(age, levels = c("fledgling", "subadult", "adult"))
age2  # added "subadult" level
age3 <- factor(age, levels = c("chick", "subadult", "adult"))
age3  # drops "juvenile" element, not in levels

# Factor Problems
age[2] <- "chick"  # gives Warning message
age  # NA inserted because "chick" is not a level
age <- c(age, "chick")
age  # converted to class, replaces levels with integers

# Objects in Current Environment
?ls
ls()
objects()  # equivalent to: ls()

# Removing Objects
?rm
rm(vec, mt)

# Removing All Objects in Current Environment
rm(list = ls())

# Search for function help files
help(as.integer)
?as.integer

# Search within help files
help.search("kernel")
??"kernel"

# Package Functions
help(package = "stats")   # list all stats functions

# Vignettes
vignette(package = "grid")
vignette("viewports", package = "grid")

# Valid Object Names
Ab_.3 <- 1    # letters, numbers, underscores, and dots only
.is_ok <- 2   # names must start with letter or dot
a1 <- 3       # numbers only allowed after an initial letter
a <- 4  	  # R is case sensitive
A <- 5		  # a is not equal to A
a  			  # 4
A  			  # 5

# Reserved Words
?reserved	  # not allowed as names

# Good names
day_one <- Sys.Date()
day_1 <- Sys.Date()

# Bad names
First_day_of_the_month <- "2017-06-01"
Dayone <- "2017-06-01"
Djm1 <- "2017-06-01"

# Avoid using names of existing variables and functions
T <- FALSE    				# replaces the T for TRUE with FALSE
seq <- 10		  			# replaced the seq() function with 10
mean <- function(x) sum(x)  # replaces mean() with sum()

# Good - Leave Space
df <- data.frame(feet = c(5, 6, 5, 6), inches = c(10, 2, 8, 4))

# Good - Leave Space
average <- mean(df$feet / 12 + df$inches, na.rm = TRUE)

# Bad - No Space
average<-mean(df$feet/12+df$inches,na.rm=TRUE)

# Google’s R Style Guide:
browseURL("http://google.github.io/styleguide/Rguide.xml")

# Advanced R - Style Guide (Hadley Wickham):
browseURL("http://adv-r.had.co.nz/Style.html")

# Break Time
Sys.sleep(30)	# R system sleeps for 30 seconds

## Data Exploration ------------------------------------------------------------

# Reading Tables
?read.table() 	# reads tabular data
?read.csv()  	# reads comma delimited files
?read.csv2() 	# reads semi-colon delimited files
?read.delim() 	# reads files with any delimiter

# Reading Excel Files
install.packages("xlsx")
library(xlsx)

data <- read.csv(text = "Data/ecotox_survival.csv")
data2 <- read.csv(text = "Data/df.csv")

# Data Exploration
?str()  	# summary information on the data structure.
?head() 	# first 6 lines of data
?tail() 	# last 6 lines of data
?summary() 	# gives summary of data
?unique() 	# gives all unique values
?class() 	# tells you the class of the data
?table() 	# build a table of counts at each factor combination  ?is.na() 	# figure out if there are any NA’s in the object

## Slide 75 ------------------------------------------------------------
