devtools::install_github("jventural/FactorialTools", force = T)
library(FactorialTools)
FactorialTools::generate_model_mplus(n_facts = 1, n_vars = 12, n_subvars= 3, fixed_correlations = F)
FactorialTools::generate_model_mplus(n_facts = 2, n_vars = 12, n_subvars = 3, fixed_correlations = F)