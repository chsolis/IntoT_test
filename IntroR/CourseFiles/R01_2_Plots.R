# File:    R_3_Plots.R
# Course:  Introduction to R
# Section: 3: Plots
# Author:  Christopher Solis, uic.edu, @csolisoc
# Date:    2019-04-23

# 1. Load data ################################################

library(datasets)  # Load built-in datasets

# 2. Sumarize data ############################################
iris               # Shows the whole data set. Hard to read!
head(iris)         # Shows the first six lines of iris data
summary(iris)      # Summary statistics for iris data
plot(iris)         # Scatterplot matrix for iris data

# 3. Clean up #################################################

# clear packages
detach("package:datasets", unload = TRUE)  # For base

# Clear plots
dev.off()  # But only if there IS a plot

# Clear console
cat("\014")  # ctrl+L

# FIN!