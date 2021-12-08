# Load the data file using here command
if (!require("here")) install.packages("here")
library("here")
results <- read.csv(here("/BIS-044-DiCapuaHenry/Data/PRESIDENT_precinct_general.csv"))

# Define values for Biden and Trump
Biden <- 0
Trump <- 0

# Define number of rows in data frame
n <- nrow(results)

# Award electoral votes
for (i in 1:n) {
  if(results$candidate[i] == "DONALD J TRUMP") {
    Trump <- Trump + results$votes[i]
  } else if (results$candidate[i] == "JOSEPH R BIDEN") {
    Biden <- Biden + results$votes[i]
  }
}

# Print final results
cat("Trump:", Trump,"\nBiden:", Biden)