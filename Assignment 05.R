## Reading in our csv file using fread() from package data.table 
# Installing data.table (if required) and loading it into memory
if (!require("data.table")) install.packages("data.table")
library("data.table")
header <- read.table("LEU0254686000A.csv", header = TRUE,
                     sep=",", nrow = 1)
DF <- fread("LEU0254686000A.csv", skip=1, sep=",",
            header=FALSE, data.table=FALSE,
            showProgress=FALSE)
setnames(DF, colnames(header))
rm(header)
