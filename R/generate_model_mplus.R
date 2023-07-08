generate_model_mplus <- function(n_facts, n_vars, n_subvars, fixed_correlations = TRUE){
  for (fact in 1:n_facts){
    for (var in 1:n_vars){
      for (subvar in 1:n_subvars){
        if (fact > 1 && var == 1 && subvar <= (fact - 1)){
          cat(paste("FACTOR", fact, " BY v", var, "#", subvar, "@0 ; ! loading set to zero to fix rotation\n", sep = ""), sep = "")
        } else {
          cat(paste("FACTOR", fact, " BY v", var, "#", subvar, "* ;\n", sep = ""), sep = "")
        }
      }
      cat("\n")
    }
  }
  cat("\n!Standardize factors and set factors uncorrelated\n")
  for (fact in 1:n_facts){
    cat(paste("FACTOR", fact, "@1;\n", sep = ""))
  }

  cat("\n")  # New line for the space

  if (n_facts > 1) {
    for (fact1 in 1:(n_facts - 1)){
      for (fact2 in (fact1 + 1):n_facts){
        if (fixed_correlations){
          cat(paste("FACTOR", fact1, " with FACTOR", fact2, "@0;\n", sep = ""))
        } else {
          cat(paste("FACTOR", fact1, " with FACTOR", fact2, ";\n", sep = ""))
        }
      }
    }
  }
}
