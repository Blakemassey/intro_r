# Working Directory
?getwd()	 # show current working directory
?setwd()	 # set working directory

?install.packages()	# downloads package from CRAN
?library()         	# loads package into the R environment

install.packages(swirl)
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

i <- 5L    # an L suffix coerces numeric elements to integer
class(i)
z <- c(1.1, 9, 3.14)
class(z)

alpha <- c("m", "a", "s", "s")
class(z)
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

# R Base Functions
builtins() 		# list all built-in objects (mostly functions!)
class(print)	# function’s class is "function"
class(`+`)		# operator’s class is "function"
class(`if`)		# control’s class is "function"

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
"a" %in% c("e", "f", "g")

# Assignment/Creation Operators
?`<-` 	 # assign in current environment
?`<<-`	 # assign in global environment
?`=`	 # assign (use inside of function arguments)
?`:`	 # create sequence

# Assignment/Creation Operators
my_var <- "g"	 # assign in current environment
pi <-- 4.12	 	 # assign in parent environment
times=8 		 # assign (use inside of function arguments)
3:7 			 # create sequence# Indexing/Extraction Operators

?`[`	  # index (returns list)
?`[[`  # index (returns list component)
?`$`	  # extract named column or component
?`@`	  # extract named slot
?`::`	  # use a particular function from a package

# Create a list
lt <- list(1:3, "a", c(TRUE, FALSE, TRUE), df, c(2.3, 5.9))

# Indexing/Extraction Operators
lt[1] 	 		 # index (returns list)
lt[[1]]  		 # index (returns list component)
lt$var	 		 # extract named column or component
lt@var	 		 # extract named slot
stats::ecdf	 	 # use a particular function from a package

# Special Operators
?`!`         # negation
?`~`	  # used for model formulae
?`%%`     # special operators (infix type)

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

# Logic Evaluations Examples
TRUE == TRUE
(FALSE == TRUE) == FALSE
6 == 7
6 < 7
10 <= 10
5 != 7
!(5 == 7)
FALSE & FALSE
TRUE & c(TRUE, FALSE, FALSE)
TRUE && c(TRUE, FALSE, FALSE)
TRUE | c(TRUE, FALSE, FALSE)
TRUE || c(TRUE, FALSE, FALSE)

# Basic Function Layout
#output <- function_name(arguments)

# Example of Function Arguments
round(6.248) # press tab to see function’s arguments
round(6.248, digits = 0) # equivalent to previous line
round(6.248, digits = 1) # rounds to 1 decimal places
round(6.248, digits = 2) # rounds to 2 decimal places

# Examples of Arguments
?c     	# "..." are objects to combine
?print  # x = R object; "..." = additional arguments
?length		# x = R object
?rep.int	# x = vector; times = number of times to repeat
?Sys.Date	# no arguments

# Mathematical Functions
?abs  	  	# absolute value
?log 	  	# log to base e
?exp 	  	# antilog
?log 	  	# log to base n
?log10 	  	# log to base 10
?sqrt 	 	# square root
?cos     	# cosine of x in radians; also sin(x), tan(x)
?factorial 	# x!
?floor	  	# greatest integer less than x
?ceiling   	# smallest integer greater than x
?trunc 	  	# closest integer to x between x and 0
?round   	# round the value of x to an integer
?signif  	# give x to 6 digits scientific notation

# Mathematical Functions (Examples)
abs(-23)     	# 23
log(5) 		 	# 1.609438
exp(4) 		 	# 54.59815
log(6, 2) 	 	# 2.584963
log10(7) 	 	# 0.845098
sqrt(25) 	 	# 5
cos(pi)      	# -1
factorial(4) 	# 24
floor(6.23) 	# 6
ceiling(9.19)   # 10
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

# Control Statements
?'if'
?'else'
?'for'
?'in'
?'while'
?'repeat'
?'break'
?'next'

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

# Open "R Programming, Lesson 6: Subsetting Vectors"
swirl()

....

# Leave swirl by using the bye() function
bye()

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

# Create a matrix
mt <- matrix(1:16, nrow=4)

# Create a data frame
df <- data.frame(x = 1:3, y = c("a", "b", "c"))

# Create a list
lt <- list(1:3, "a", c(TRUE, FALSE, TRUE), df, c(2.3, 5.9))

# Print objects in the current environment
objects() 	# equivalent to: ls()

# Removing objects from the environment
rm(mt, df, lt)

# Lists
lt <- list(1:3, "a", c(TRUE, FALSE, TRUE), c(2.3, 5.9))
lt[1]        # Single bracket returns a list
lt[[3]]      # Double bracket returns list components

# Matrices / Data frames
mt <- matrix(1:16, nrow=4)
mt[1, 2]	# Returns element
mt[2, ] 	# Returns row
mt[, 3]		# Returns column


# Names: Data frames
df <- data.frame(x = c(4:8), y = c(letters[1:5]), z = c(TRUE,
  FALSE, FALSE, TRUE, TRUE))
df[2, 1]
df[4, ]
df[, 3]

## UP THROUGH SLIDE 50
