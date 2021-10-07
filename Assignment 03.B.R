install.packages("readr")

library(readr)
PresidentDF <- read_csv("/Users/janemeyer/Downloads/BIS-044-meyerquinn/data/PRESIDENT_precinct_general.csv")
View(PresidentDF)

Biden <- 0
Trump <- 0

for (i in 1:length(PresidentDF$party_simplified)){
  temp <- PresidentDF$candidate[i]
  if (!is.na(temp)){
    if(PresidentDF$candidate[i] == "JOSEPH R BIDEN") {
      Biden = Biden + PresidentDF$votes[i]}
    if(PresidentDF$candidate[i] == "DONALD J TRUMP"){
      Trump = Trump + PresidentDF$votes[i]}}}


cat("Trump:", Trump)
cat("Biden:", Biden)

