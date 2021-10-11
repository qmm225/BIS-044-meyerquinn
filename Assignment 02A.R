#Function determines days left in semester from current date
DaysLeft=as.integer(as.Date("2021-12-03")-Sys.Date())

#Prints words and numbers
cat("Quinn, there are", DaysLeft, "days left in the semester.")
#50/50