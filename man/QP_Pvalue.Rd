% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/UserFunctions.R
\name{QP_Pvalue}
\alias{QP_Pvalue}
\title{Computes the p-value of a score.}
\usage{
QP_Pvalue(score, q_p, q_m, q_z, q_r, n_p, n_m, n_z, epsilon = 1e-16)
}
\arguments{
\item{score}{The score for which the p-value will be computed.}

\item{q_p}{Expected number of positive predictions.}

\item{q_m}{Expected number of negative predictions.}

\item{q_z}{Expected number of nil predictions.}

\item{q_r}{Expected number of regulated predictions.}

\item{n_p}{Number of positive predictions from experiments.}

\item{n_m}{Number of negative predictions from experiments.}

\item{n_z}{Number of nil predictions from experiments.}

\item{epsilon}{Threshold for probabilities of matrices. Default value is 1e-16.}
}
\value{
This function returns a numerical value, where the numerical value is the p-value of the score.
}
\description{
This function computes the right sided p-value for the Quaternary 
             Dot Product Scoring Statistic.
}
\details{
Setting epsilon to zero will compute the probability mass function without ignoring any matrices 
         with probabilities smaller than epsilon*D_max (D_max is the numerator associated with the matrix of highest
         probability for the given constraints). The default value of 1e-16 is experimentally validated to be 
         a very reasonable threshold. Setting the threshold to higher values which are smaller than 1 will lead to understimating
         the probabilities of each score since more tables will be ignored.
}
\examples{
# Computing The p-value of score 50 
# for the given table margins. 
pval <- QP_Pvalue(50,50,50,50,0,50,50,50)

}
\references{
Carl Tony Fakhry, Parul Choudhary, Alex Gutteridge, Ben Sidders, Ping Chen, Daniel Ziemek, and
            Kourosh Zarringhalam. Interpreting transcriptional changes using causal graphs: new methods and
            their practical utility on public networks. BMC Bioinformatics, 17:318, 2016. ISSN 1471-2105.
            doi: 10.1186/s12859-016-1181-8.
           
            Franceschini, A (2013). STRING v9.1: protein-protein interaction networks, with increased coverage 
            and integration. In:'Nucleic Acids Res. 2013 Jan;41(Database issue):D808-15. doi: 10.1093/nar/gks1094. 
            Epub 2012 Nov 29'.
}
\seealso{
\code{\link{QP_SigPvalue}}
}
\author{
Carl Tony Fakhry, Ping Chen and Kourosh Zarringhalam
}
