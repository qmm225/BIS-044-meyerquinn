install.packages("readr")

library(readr)
PresidentDF <- read_csv("/Users/janemeyer/Downloads/BIS-044-meyerquinn/data/PRESIDENT_precinct_general.csv")
View(PresidentDF)

Biden <- 0
Trump <- 0

for (i in 1:length(PresidentDF$party_simplified)){
  votes <- PresidentDF$party_simplified[i]
  if (!is.na(votes)){
    if(PresidentDF$party_simplified[i] == "DEMOCRAT") {
      Biden = Biden + PresidentDF$votes[i]}
    if(PresidentDF$party_simplified[i] == "REPUBLICAN"){
      Trump = Trump + PresidentDF$votes[i]}}}


cat("Trump:", Trump)
cat("Biden:", Biden)

#-5 did not push data, -5 here(), -5 use candidate variable 35/50