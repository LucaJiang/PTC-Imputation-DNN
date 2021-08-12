# Convert categorical variable to dummy variable
library(dummy)
#load the data frame in the csv file
df = read.csv("text.csv", header = T)


# take variable "echo" for example
# echo variable is the 10th column of df
echo = df[, 10]

# Change the data type of echo variable
echo = factor(echo)
echo = as.data.frame(echo)
# Generate dummy variables of echo
echo_dum = dummy(echo)
# Delete one column of echo
echo_dum = echo_dum[, -4]
# Dummy uses "m-1" variables to represent "m" variables. There are 4 variables, so it needs 4-1 = 3 variables


# save----
write.csv(..., "text_final.csv")

# END