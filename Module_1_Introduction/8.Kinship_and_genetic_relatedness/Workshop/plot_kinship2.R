# Code to plot pedigrees using kinship2
# Juliana Acosta-Uribe 2024

# 1. Install and load kinship2 package in R
install.packages("kinship2")
library(kinship2)

# 2. Set your working directory (the folder where you have your documents)
setwd("~/where/you/want")

# 3. Load your data
Family_data = read.delim("Pedigree.txt")
# It should contain at least 4 columns with headers
# Sample ID "id", Paternal ID "dadid", Maternal ID "momid", SEX "sex"
# Traits of interest can be added in another column (here called "trait"), or additional informaiton can be added to color code the icons
# The header of each column should match the header specified in the pedigree object

#4. Create the pedigree object
Family_ped = pedigree(Family_data$id, 
                         Family_data$dadid,
                         Family_data$momid,
                         Family_data$sex,
                         Family_data$trait)

# 5. Plot your pedigree to check its ok
print.pedigree(Family_ped)
# This is a fast command that will let you know if the pedigree object was created properly

plot(Family_ped)

#6. Save it as an eps file (you will be able to edit this file using multiple software like Adobe or InkScape)
setEPS()
postscript("Family_ped.eps")
plot(Family_ped)
dev.off()

## Now you can open the "Family_ped.eps" 
