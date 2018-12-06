InterUplift <- function(data, treat, outcome, predictors, input = "all"){

    #The parameter input controls if we want to use all the predictors ("all") 
    #or the output of bestFeatures function as predictors ("best")
    if (input != "all" & input != "best"){
      stop("Choose an appropriate method for input in 'all' or 'best'")
    }
  
    if (input == "all") {
      
      inter_formula <- c()
      for (k in seq(1:length(predictors))) {
        inter_formula <- paste(inter_formula, paste(predictors[k], treat, sep = ":"), sep="+")
      }
      model_formula <- as.formula(paste(paste(outcome, "~", treat, "+"),paste(predictors,collapse="+"),inter_formula))
      
      model <- glm(model_formula, family=binomial(link="logit"), data)
      
    }
  
    if (input == "best") {
      model_formula <- as.formula(paste(paste(outcome, "~"),paste(predictors,collapse = "+")))
      
      model <- glm(model_formula, family=binomial(link="logit"), data)
    }
  
  return(model)
}