QiniCurve <- function(x, ...){
  
  # Plots the Qini curve.
  #
  # Args:
  #   x: a table that must be the output of PerformanceUplift() function.
  #
  # Returns:
  #   The Qini curve.
  
  if (!inherits(x, "PerformanceUplift"))
    stop("tools4uplift: object not of class PerformanceUplift")
  
  cGrey   <- rgb(128, 128, 131, 255, maxColorValue = 255)
  
  nb <- length(x$cum_per)
  
  plot(c(0, x$T_n)/x$T_n[nb]*100, c(0, x$inc_uplift), ...)
  lines(c(0,100), c(0, x$inc_uplift[nb]), col=cGrey, type="b", lwd=1.5)
  return(QiniArea(x))
}

# END FUN
