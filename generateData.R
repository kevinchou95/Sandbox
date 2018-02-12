generateData <- function(size) {

  df <-
    data.frame(
      1:size,
      round(runif(size, min = 2.0, max = 4.0), 2),
      as.integer(runif(size, min = 800, max = 1600)),
      as.integer(runif(size, min = 23000, max = 130000)),
      sample(c('M','F'), replace = TRUE, size),
      sample(c('White', 'Black', 'Asian', 'Hispanic'), replace = TRUE, size),
      stringsAsFactors = TRUE,
      row.names = 1
    )
  colnames(df) <- c('GPA', 'SAT', 'Income', 'Sex', 'Race')
  df
}
