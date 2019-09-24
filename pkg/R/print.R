######################################################################
# Print DualUplift
######################################################################

print.DualUplift <- function(x, ...) {
  
  # Print interface to DualUplift.
  
  res <- list (call         = x[[3]],
               control      = x[[1]], 
               treatment    = x[[2]])             
  
  res$control$call <- "Control Group Logistic Model"
  res$treatment$call <- "Treatment Group Logistic Model"
  
  class(res) <- "print.DualUplift"
  return(print(res))
}

# END FUN

######################################################################
# Predict PerformanceUplift
######################################################################

print.PerformanceUplift <- function(x, ...) {
  
  # Print interface to PerformanceUplift

  res <- cbind("Targeted Population (%)" = x$cum_per, 
              "Incremental Uplift (%)" = x$inc_uplift,
              "Observed Uplift (%)" = x$uplift)  
  
  class(res) <- "print.PerformanceUplift"
  return(print(res))
}

# END FUN