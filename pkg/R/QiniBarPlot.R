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
  
  #Compute the Kendall's uplift rank correlation
  #Raise a warning if there are missing values in x
  
  x_for_rho <- cbind(x$cum_per, x$uplift)
  complete_x_for_rho <- x_for_rho[complete.cases(x_for_rho),]
  if (nrow(x_for_rho) > nrow(complete_x_for_rho)){
    warning("tools4uplift: there are missing values in your PerformanceUplift object. They will be omitted in the computation of the Kendall's rank correlation.")
  }
  
  kendall_uplift <- cor(seq(nrow(complete_x_for_rho),1), complete_x_for_rho[,2], method="kendall")
  
  return(kendall_uplift)
  
}

# END FUN