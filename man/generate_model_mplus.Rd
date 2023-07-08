\name{generate_model_mplus}
\alias{generate_model_mplus}
\title{Factor analysis tools}

\description{
This package provides tools to perform factor analysis for nominal data.
}

\usage{
generate_model_mplus(n_facts, n_vars, n_subvars, fixed_correlations = TRUE)
}

\arguments{
\item{n_facts}{Are the number of factors}
\item{n_vars}{Are the number of items}
\item{n_subvars}{Are the number of category}
\item{fixed_correlations}{Whether correlations are set to zero or not}

}


\examples{
generate_model_mplus(n_facts = 2, n_vars = 12, n_subvars = 3, fixed_correlations = F)
}
