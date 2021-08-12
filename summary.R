# R code for summarize the clinical features
# Import data ----
# The following code import dataset as data
...

# summary ----
summary(data)
for (ii in 2:(length(colname) - 1)) {
  print(table(t(data[, ii]), data$CLNM , dnn = c(colname[ii], "CLNM")))
}

# Change to dummary variable
# If variable Aged > 40, let Aged = 1; else Aged = 0
data$Aged = ifelse(data$Age >= 40, 1, 0)
data$Diameterd = ifelse(data$Diameter >= 1, 1, 0)
# Change data type
data$Aged = as.factor(as.character(data$Aged))
data$Diameterd = as.factor(as.character(data$Diameterd))

table(data$Aged, data$CLNM , dnn = c("Age", "CLNM"))
table(data$Diameterd, data$CLNM , dnn = c("Diameter", "CLNM"))

# Hypothesis test ----
# shapiro.test is used to test if whether the variable distribution is normal distribution
shapiro.test(CLNM$Age)
shapiro.test(nonCLNM$Age)
# Result: violate the normal distribution

# wilcox.test for the continuous value
wilcox.test(nonCLNM$Age, CLNM$Age)

shapiro.test(CLNM$Diameter)
shapiro.test(nonCLNM$Diameter)
# Result: violate the normal distribution 
# wilcox.test for the continuous value
wilcox.test(nonCLNM$Diameter, CLNM$Diameter)

# chi-square test for discrete variables
for (ii in 2:19) {
  print(colname[ii])
  print(chisq.test(table(t(data[, ii]), data$CLNM)))
}

# fisher exact test for discrete variables
fisher.test(data$Echogenicity, data$CLNM)
fisher.test(data$Ki67, data$CLNM)
fisher.test(data$Galectin3, data$CLNM)

# END------