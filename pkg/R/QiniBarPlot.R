QiniBarPlot <- function(x, title = "Model Performance: Uplift by Group", color = NULL){
  
  # Plots the Qini barplot.
  #
  # Args:
  #   x: a table that must be the output of PerformanceUplift() function.
  #
  # Returns:
  #   The Qini barplot.
  
  if (!inherits(x, "PerformanceUplift"))
    stop("tools4uplift: object not of class PerformanceUplift")
  
  if (is.null(color)==TRUE) {
    color <- rgb(097, 154, 188, 255, maxColorValue = 255)
  }
  
  barplot(x$uplift, 
          names.arg = round(x$cum_per*100), 
          col = color,
          xlab = "Proportion of Population Targeted (%)",
          ylab = "Uplift (%)",
          cex.main = 0.85,
          main = title)
  
  return(NULL)
  
}

# END FUN