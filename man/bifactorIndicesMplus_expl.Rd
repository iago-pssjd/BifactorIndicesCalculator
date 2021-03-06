% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Exploratory_BifactorIndices.R
\name{bifactorIndicesMplus_expl}
\alias{bifactorIndicesMplus_expl}
\title{bifactorIndicesMplus_expl}
\usage{
bifactorIndicesMplus_expl(
  Lambda = file.choose(),
  ItemsBySF = NULL,
  LoadMin = 0.2
)
}
\arguments{
\item{Lambda}{is an Mplus .out file. Defaults to an open file dialog box}

\item{ItemsBySF}{is a list, indexed by factor, of vectors of item names belonging to each
factor. You must include the general factor in this list, and the list must have names which
match the factor names in Mplus. Defaults to \code{NULL}, in which case composition of specific
factors in automated by comparing loadings to \code{LoadMin}}

\item{LoadMin}{is the minimum loading size so that an item is considered to "belong" to a factor.
If \code{ItemsBySF} is not provided, then items are assigned to factors based on whether their
loading on that factor is greater than \code{LoadMin}. If \code{ItemsBySF} is provided, then
warnings are issued whenever items load above \code{LoadMin} on factors to which they do not belong,
or do not load above \code{LoadMin} on factors to which they do belong,}
}
\value{
A list of bifactor indices, including three different ECV indices, Omega, and
OmegaH.
}
\description{
Computes all available bifactor indices given an \code{Mplus} .out file for a bifactor EFA
}
\details{
To use this function, simply call it without any arguments and a dialog box
will pop up for you to select a .out file of an exploratory bifactor model.

EFA models are not currently (3/3/2020) supported by \code{MplsuAutomation::ReadModels()},
but they will be in the very near future, at which time this function will be completed.
}
\seealso{
\code{\link{bifactorIndices}},
         \code{\link{bifactorIndicesMplus}},
         \code{\link{bifactorIndicesMplus_ESEM}},
         \code{\link{bifactorIndices_expl}}
}
