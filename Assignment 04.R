# Load data file using here command
if(!require("readxl")) install.packages("readxl")
library("readxl")
if(!require("tidyverse")) install.packages("tidyverse")
library("tidyverse")
officials_old <- read_excel(here("/BIS-044-DiCapuaHenry/Data/dataset1.xls"))

# Standardize the original data file
officials_new <- officials_old %>% mutate(Title=replace(Title, Title=="Aldermen", "Alderman"),
                  Title=replace(Title, Title=="Judge, Court of Appeal", "Judge"),
                  Title=replace(Title, Title=="Judge, Family Court", "Judge"),
                  Title=replace(Title, Title=="City Judge", "Judge"),
                  Title=replace(Title, Title=="City Judge, City Court", "Judge"),
                  Title=replace(Title, Title=="District Judge", "Judge"),
                  Title=replace(Title, Title=="Clerk", "Clerk of Court"),
                  Title=replace(Title, Title=="Constable(s)", "Constable"),
                  Title=replace(Title, Title=="Mayor-President", "Mayor"),
                  Title=replace(Title, Title=="Councilman", "Council Member"),
                  Title=replace(Title, Title=="Councilmen", "Council Member"),
                  Title=replace(Title, Title=="Councilmember At Large", "Council Member"),
                  Title=replace(Title, Title=="Councilmember", "Council Member"),
                  Title=replace(Title, Title=="Councilman at Large", "Council Member"),
                  Title=replace(Title, Title=="Councilmember at Large", "Council Member"),
                  Title=replace(Title, Title=="Council Member at Large", "Council Member"),
                  Title=replace(Title, Title=="Council Member I", "Council Member"),
                  Title=replace(Title, Title=="Council Member II", "Council Member"),
                  Title=replace(Title, Title=="Council Member III", "Council Member"),
                  Title=replace(Title, Title=="Council Member(s)", "Council Member"),
                  Title=replace(Title, Title=="Justice of the Peace, Parishwide", "Justice of the Peace"),
                  Title=replace(Title, Title=="Justice of the Peace(s)", "Justice of the Peace"))

# Storing titles to a data frame and viewing them
# titles_old <- data.frame(officials_old %>% count(Title))
titles <- data.frame(officials_new %>% count(Title))
View(titles)