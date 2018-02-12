display <- function(data, x = 'Income', y = 'SAT') {
  
  a <- ggplot(data, aes(data[[x]], data[[y]], color = Race))
  a + geom_point() + ggtitle(paste(x, y, sep = ' vs ')) + xlab(x) + ylab(y)
}