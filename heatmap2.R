# Plot heatmaps of clinical features with missing values
# Maintain by Xiaotong.Chen

library(gplots)
temp = data[, 2:19]
temp$Echogenicity = as.character(temp$Echogenicity)
echo = temp$Echogenicity
echo[is.na(echo)] = "-1"
echo[echo == "Marked_hypo_echogenicity"] = "1"
echo[echo == "Hypo_echogenicity"] = "2"
echo[echo == "Iso_echogenicity"] = "3"
echo[echo == "Miture_echogenicity"] = "4"
echo[echo == "Hyper_echogenicity"] = "5"
echo = as.numeric(echo)
temp$Echogenicity = echo

temp$Location = as.character(temp$Location)
loc = temp$Location
loc[is.na(loc)] = "-1"
loc[loc == "Bilateral"] = "1"
loc[loc == "Isthmus"] = "2"
loc[loc == "Left"] = "3"
loc[loc == "Right"] = "4"
loc = as.numeric(loc)
temp$Location = loc

tempstr = temp
tempstr$Sex = as.character(tempstr$Sex)
tempstr$Age = as.character(tempstr$Age)
tempstr$Bloodstream = as.character(tempstr$Bloodstream)
tempstr$Calcification = as.character(tempstr$Calcification)
tempstr$Shape = as.character(tempstr$Shape)
tempstr$Margin = as.character(tempstr$Margin)
tempstr$Multifocal = as.character(tempstr$Multifocal)
tempstr$Capsule_contact = as.character(tempstr$Capsule_contact)
tempstr$CK19 = as.character(tempstr$CK19)
tempstr$Galectin3 = as.character(tempstr$Galectin3)
tempstr$CD56 = as.character(tempstr$CD56)
tempstr$TG = as.character(tempstr$TG)
tempstr$Ki67 = as.character(tempstr$Ki67)
tempstr$MC = as.character(tempstr$MC)
tempstr$Diameter = as.character(tempstr$Diameter)
tempstr$BRAF = as.character(tempstr$BRAF)

tempstr[is.na(tempstr)] = "-1"

tempnum = tempstr
tempnum$Sex = as.numeric(tempnum$Sex)
tempnum$Age = as.numeric(tempnum$Age)
tempnum$Bloodstream = as.numeric(tempnum$Bloodstream)
tempnum$Calcification = as.numeric(tempnum$Calcification)
tempnum$Shape = as.numeric(tempnum$Shape)
tempnum$Margin = as.numeric(tempnum$Margin)
tempnum$Multifocal = as.numeric(tempnum$Multifocal)
tempnum$Capsule_contact = as.numeric(tempnum$Capsule_contact)
tempnum$CK19 = as.numeric(tempnum$CK19)
tempnum$Galectin3 = as.numeric(tempnum$Galectin3)
tempnum$CD56 = as.numeric(tempnum$CD56)
tempnum$TG = as.numeric(tempnum$TG)
tempnum$Ki67 = as.numeric(tempnum$Ki67)
tempnum$MC = as.numeric(tempnum$MC)
tempnum$Diameter = as.numeric(tempnum$Diameter)
tempnum$BRAF = as.numeric(tempnum$BRAF)


mat = as.matrix(tempnum)


mat2 = mat
mat2 = mat2 + 1
mat2[which(mat2 == 6)] = 5
library(RColorBrewer)
heatmap.2(
  mat2,
  dendrogram = "col",
  srtCol = 38,
  #adjCol = c(1, 1),
  col = c("white", brewer.pal(6, "Blues")),
  #col = topo.colors(7),
  #col = bluered,
  trace = "none",
  scale = "none",
  #tracecol = "#303030",
  key = FALSE,
  labRow = FALSE
)
