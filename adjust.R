adjust <- function(data) {
  library(dplyr)
  source('generateScores.R')
  
  df <- tbl_df(data)
  
  df <- mutate(df, Score = generateScores(data))
  arrange(df, Score)
  
  # Top 70% get accepted, and has 1.5x income boost
  accepted <- slice(df, 1:70)
  accepted <- mutate(accepted, Income = Income * 1.5)
  
  rejected <- slice(df, 71:100)
  
  df <- full_join(accepted, rejected)
  
  # Adjust SAT scores according
  mean <- mean(df$Income)
  df <- mutate(df, SAT = (Income / mean) * SAT)
  
  # Normalize to SAT scale
  df <- mutate(df, SAT = pmin(SAT, 2400))
}