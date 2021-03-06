% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/visualizations.R
\name{evidencePlot}
\alias{evidencePlot}
\title{Create an evidence plot for a module}
\usage{
evidencePlot(l, m, mset = "all", scaled = TRUE, rug = TRUE, roc = TRUE,
  filter = FALSE, unique = TRUE, add = FALSE, col = "black",
  col.rug = "#eeeeee", gene.labels = NULL, gl.cex = 1, style = "roc",
  lwd = 1, lty = 1, rug.size = 0.2, legend = NULL, ...)
}
\arguments{
\item{l}{sorted list of HGNC gene identifiers}

\item{m}{character vector of modules for which the plot should be created}

\item{mset}{Which module set to use (see tmodUtest for details)}

\item{scaled}{if TRUE, the cumulative sums will be divided by the total sum (default)}

\item{rug}{if TRUE, draw a rug-plot beneath the ROC curve}

\item{roc}{if TRUE, draw a ROC curve above the rug-plot}

\item{filter}{if TRUE, genes not defined in the module set will be removed}

\item{unique}{if TRUE, duplicates will be removed}

\item{add}{if TRUE, the plot will be added to the existing plot}

\item{col}{a character vector color to be used}

\item{col.rug}{a character value specifying the color of the rug}

\item{gene.labels}{a named character vector with gene labels to be shown (only if rug is plotted)}

\item{gl.cex}{Text cex (magnification) for gene labels}

\item{style}{"roc" for receiver-operator characteristic curve (default), and "gsea" for GSEA-style (Kaplan-Meier like plot)}

\item{lwd}{line width (see par())}

\item{lty}{line type (see par())}

\item{rug.size}{fraction of the plot that should show the rug. If rug.size is 0, rug is not drawn. If rug.size is 1, ROC curve is not drawn.}

\item{legend}{position of the legend. If NULL, no legend will be drawn}

\item{...}{Further parameters passed to the plotting function}
}
\description{
Create an evidence plot for a module
}
\details{
This function creates an evidence plot for a module, based on an
ordered list of genes. The plot shows the receiving operator
characteristic (ROC) curve and a rug below, which indicates the distribution of the
module genes in the sorted list.
}
\examples{
# artificially enriched list of genes
set.seed(123)
data(tmod)
bg <- tmod$GENES$ID
fg <- sample(c(tmod$MODULES2GENES[["LI.M127"]], bg[1:1000]))
l <- unique(c(fg, bg))
evidencePlot(l, "LI.M127")
evidencePlot(l, filter=TRUE, "LI.M127")
}
\seealso{
\code{\link{tmod-package}}, \code{\link{hgEnrichmentPlot}}
}

