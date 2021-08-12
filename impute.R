# Missing data imputation
# import data ----
library(readr)
...

# MICE---- 
library(mice)
imp.data = data
imp.data$Index = NULL

# Generate complete data sets
imp = mice(subset(imp.data, select = -CLNM), seed = 0)
# choose one of the generated complete data set
cmplt.data = complete(imp)
cmplt.data = cbind(Index = data$Index, cmplt.data, CLNM = data$CLNM)
summary(cmplt.data)

# fit = with(imp, lm(CLNM ~ ., imp.data))
# pooled = pool(fit)

write.csv(subset(cmplt.data, select = -CLNM), "text.csv", row.names = FALSE)

# END