QiniArea <- function(x, adjusted=FALSE){
  
  # Computes the area under the Qini curve.
  #
  # Args:
  #   x: a table that must be the output of PerformanceUplift() function.
  #
  # Returns:
  #   The Qini coefficient.
  
  if (!inherits(x, "PerformanceUplift"))
    stop("tools4uplift: object not of class PerformanceUplift")
  
  nb <- length(x$cum_per)
  sum <- x$inc_uplift[1]/2*x$T_n[1]/x$T_n[nb]
  for (i in 2:nb) {
    sum <- sum + (x$inc_uplift[i] + x$inc_uplift[i-1])/2*(x$T_n[i]/x$T_n[nb]-x$T_n[i-1]/x$T_n[nb])
  }
  
  qini_area <- sum-x$inc_uplift[nb]/2
  
  if (adjusted == TRUE){
    qini_area <- qini_area * cor(seq(nb,1), x$uplift, method="kendall")
  }
  
  return(qini_area)
}

# END FUN