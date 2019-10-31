MultiQiniCurve <- function(x, 
                           title = "Model Performance: Qini Curve", 
                           legend_names = NULL){
  
  # Plots several Qini curves.
  #
  # Args:
  #   x: a list containing tables that must be the output of PerformanceUplift() function.
  #
  # Returns:
  #   The Qini curves in the same plot.
  
  if (class(x) == "PerformanceUplift"){
    return(QiniCurve(x, title))
  }
  
  nb_qini_curves <- length(x)
  
  if (is.null(legend_names) == TRUE){
    legend_names <- c()
    for (i in 1:nb_qini_curves){
      legend_names[i] <- paste("Model", i)
    }
  }
  
  # Find the maximum and the minimum for the y-axis and the overall uplift
  # for random targeting line
  min_y_axis_per_curve <- c()
  max_y_axis_per_curve <- c()
  overall_uplift_per_curve <- c()
 
  for (i in 1:nb_qini_curves){
    min_y_axis_per_curve[i] <- min(x[[i]]$inc_uplift)
    max_y_axis_per_curve[i] <- max(x[[i]]$inc_uplift)
    overall_uplift_per_curve[i] <- x[[i]]$inc_uplift[length(x[[i]]$inc_uplift)]
  }
  
  
  ### Putting all Qini curves in the same figure
  plot(c(0,1),
       c(min(min_y_axis_per_curve),max(max_y_axis_per_curve)),
       type="n",
       ylab="Relative Incremental Uplift (%)", 
       xlab="Proportion of Population Targeted",
       main = title,
       cex.axis=1.5, cex.lab=1.5)
  
  for (i in 1:nb_qini_curves){
    lines(c(0,x[[i]]$cum_per), c(0, x[[i]]$inc_uplift), lty=i, col='black', lwd=2.5)
  }
  
  lines(c(0,1), c(0, mean(overall_uplift_per_curve)), col='gray', type="b", lwd=1.5)
  
  
  legend(0.8, max(max_y_axis_per_curve), # places a legend at the appropriate place 
         c(legend_names, "random"), # puts text in the legend
         lty=seq(1,nb_qini_curves), # gives the legend appropriate symbols (lines)
         lwd=c(rep(2.5,nb_qini_curves),1.5),
         col=c(rep("black",nb_qini_curves), "gray"),
         cex=1)
  
  return(NULL)
}

# END FUN
