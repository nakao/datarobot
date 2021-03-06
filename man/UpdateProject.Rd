% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/UpdateProject.R
\name{UpdateProject}
\alias{UpdateProject}
\title{Update parameters for an existing project}
\usage{
UpdateProject(project, newProjectName = NULL, workerCount = NULL,
  holdoutUnlocked = NULL)
}
\arguments{
\item{project}{character. Either (1) a character string giving the unique alphanumeric
identifier for the project, or (2) a list containing the element projectId with this
identifier.}

\item{newProjectName}{Updated value for the projectName parameter
associated with the project.}

\item{workerCount}{Integer; sets the number of workers requested
for the associated project.}

\item{holdoutUnlocked}{Either NULL (the default) or logical TRUE;
if TRUE, this function requests the DataRobot Autopilot to unlock
the holdout data subset.}
}
\description{
This function updates parameters for the project defined by project.
}
\examples{
\dontrun{
  projectId <- "59a5af20c80891534e3c2bde"
  UpdateProject(projectId, newProjectName = "cooler Project")
  UpdateProject(projectId, workerCount = 20)
  UpdateProject(projectId, holdoutUnlocked = TRUE)
}
}
