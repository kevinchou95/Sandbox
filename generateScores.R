generateScores <- function(data) {
  
  library(dplyr)
  
  df <- tbl_df(data)
  mean <- mean(data$Income)
  
  (mean / data$Income) * data$SAT
}