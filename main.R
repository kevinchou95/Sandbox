main <- function(size = 100, n = 3) {
  data <- generateData(size)
  
  for (i in 1:n) {
    data <- adjust(data)
  }
  
  data
}
