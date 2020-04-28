# File:    R_1_Basics.R
# Course:  Introduction to R
# Section: 1: The basics
# Author:  Christopher Solis, uic.edu, @csolisoc
# Date:    2019-04-23

# 1. Getting Help ########################################################

?mean # Get help of a particular function
help.search("weighted mean") # Search the help files for a word or phrase
help(package = "dplyr") #Find help for a package.

# 2. Using Libraries #####################################################

install.packages("dplyr") # Download and install a package from CRAN
library(dplyr) # Load the package into the session, making all its functions available to use.
dplyr::select # Use a particular function from a package.
data(iris) #Load a built-in dataset into the environment.
str(iris) # Get a summary of an object’s structure
class(iris) # Find the class an object belongs to
  
# 3. Working Direactory #################################################

getwd() # Find the current working directory (where inputs are found and outputs are sent).
setwd("~/Desktop") #Change the current working directory.

# 4. Vectors ############################################################
2:6 # just an interger sequence
c(2,4,6) #Join elements into a vector
seq(2, 3, by=0.5)# A complex sequence 
rep(1:2, times=3)# Repeat a vector
rep(1:2, each=3) # Repeat elements of a vector
A <- sample(1:10, 12, replace = TRUE) 
A # shows content of vector a
print(A) # shows values of vector a
sort(A) # Return A sorted
rev(A) # Return x reversed
unique(A) # See unique values
rm(A) # removes A
A 

# 5. "<-" vs. "="  #####################################################
#<- is preferred and advised in R Coding style guides:
#https://google.github.io/styleguide/Rguide.xml#assignment
#http://adv-r.had.co.nz/Style.html

# Example of interchangeable orientations with arrows
A <-  12
13 -> B 
A
B
A -> B
A <- B
A
B
# Example of how this doesn't apply to "="
A =  12
13 = B # doesn't work!

# Pick elements from vectors
A <- sample(1:10, 12, replace = TRUE) 
A[4] # Pick the fourth element in A
A[-4] # Pick all but the fourth
A[2:4] # Elements two to four
A[-(2:4)] # All elements except two to four
A[c(1, 5)] # Elements one and five
A[x == 10] # Elements which are equal to 10
A[A < 4] # All elements less than four
A[A %in% c(1,2)] # Elements in the set 1, 2, 5      !!!!!!!!!!!!!!!!!!!!!!!

B = c(George = "apple", Maria = "orange", John = "cherry",Anthony = "apple")
B[2] # Call one element based on its index
B["Maria"] # Call one element based on the name
names(B)[B == "apple"] # Call names that selected apples

A <- read.table("Cohort.txt")










# clear packages
detach("package:datasets", unload = TRUE)  # For base

# Clear plots
dev.off()  # But only if there IS a plot

# Clear console
cat("\014")  # ctrl+L

# FIN!