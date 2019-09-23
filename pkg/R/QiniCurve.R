QiniCurve <- function(x, title = "Model Performance: Qini Curve", color = NULL){
  
  # Plots the Qini curve.
  #
  # Args:
  #   x: a table that must be the output of PerformanceUplift() function.
  #
  # Returns:
  #   The Qini curve.
  
  if (!inherits(x, "PerformanceUplift"))
    stop("tools4uplift: object not of class PerformanceUplift")
  
  if (is.null(color)==TRUE) {
    color <- rgb(097, 154, 188, 255, maxColorValue = 255)
  }
  
  cGrey   <- rgb(128, 128, 131, 255, maxColorValue = 255)
  
  nb <- length(x$cum_per)
  
  plot(c(0, x$T_n)/x$T_n[nb]*100, c(0, x$inc_uplift),
       type = "l",
       lwd = 2.5,
       col = color,
       xlab = "Proportion of Population Targeted (%)", 
       ylab = "Incremental Uplift (%)",
       cex.main = 0.85,
       main = title
  )
  abline(a = 0, b = x$inc_uplift[nb]/100, col = cGrey, lwd = 2.0)
  
  return(NULL)
}

# END FUN
