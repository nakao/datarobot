% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Models.R
\name{ListModels}
\alias{ListModels}
\title{Retrieve all available model information for a DataRobot project}
\usage{
ListModels(project)
}
\arguments{
\item{project}{character. Either (1) a character string giving the unique alphanumeric
identifier for the project, or (2) a list containing the element projectId with this
identifier.}
}
\value{
An S3 object of class listOfModels, which may be characterized
using R's generic summary function or converted to a dataframe with
the as.data.frame method.
}
\description{
This function requests the model information for the DataRobot
project specified by the project argument, described under Arguments.
This parameter may be obtained in several ways, including: (1), from
the projectId element of the list returned by GetProjectList; (2), as
the object returned by the GetProject function; or (3), as the list
returned by the SetupProject function. The function returns an S3
object of class 'listOfModels'.
}
\examples{
\dontrun{
  projectId <- "59a5af20c80891534e3c2bde"
  ListModels(projectId)
}
}
