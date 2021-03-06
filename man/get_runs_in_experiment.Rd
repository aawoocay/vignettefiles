% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/experiment.R
\name{get_runs_in_experiment}
\alias{get_runs_in_experiment}
\title{Return a generator of the runs for an experiment}
\usage{
get_runs_in_experiment(
  experiment,
  type = NULL,
  tags = NULL,
  properties = NULL,
  include_children = FALSE
)
}
\arguments{
\item{experiment}{The \code{Experiment} object.}

\item{type}{Filter the returned generator of runs by the provided type.}

\item{tags}{Filter runs by tags. A named list eg. list("tag" = "value").}

\item{properties}{Filter runs by properties. A named list
eg. list("property" = "value").}

\item{include_children}{By default, fetch only top-level runs.
Set to TRUE to list all runs.}
}
\value{
The list of runs matching supplied filters.
}
\description{
Return a generator of the runs for an experiment, in reverse
chronological order.
}
