# Defining how many days left there are
DaysLeft <- as.double(as.Date("2021-12-03") - Sys.Date())

# Print the days remaining in the semester
cat("Henry, there are", DaysLeft, "days left in the semester.")