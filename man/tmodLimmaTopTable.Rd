% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/limma.R
\name{tmodLimmaTopTable}
\alias{tmodLimmaTopTable}
\title{tmod's replacement for the limma topTable function}
\usage{
tmodLimmaTopTable(f, genelist = NULL, coef = NULL, adjust.method = "BH",
  confint = 0.95)
}
\arguments{
\item{f}{result of linear model fit produced by limma functions lmFit and eBayes}

\item{genelist}{A data frame or a character vector with additional
information on the genes / probes}

\item{coef}{Which coefficients to extract}

\item{adjust.method}{Which method of p-value adjustment; see "p.adjust()"}

\item{confint}{Confidence interval to be calculated}
}
\value{
A data frame with all genes.
}
\description{
Produce a data frame for all or for selected coefficients of a linear
fit object, including log fold changes, q-values, confidence intervals and
MSD.
}
\details{
Produce a data frame for all or for selected coefficients of a linear
fit object, including log fold changes, q-values, confidence intervals and
MSD. For each coefficient, these four columns will be created in the
output file, with the name consisting of a prefix indicating the type of
the column ("msd", "logFC", "qval", "SE", "ci.L", "ci.R") and the name of the
coefficient.
}
\seealso{
tmodLimmaTest
}

