% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Partitions.R
\name{GenerateDatetimePartition}
\alias{GenerateDatetimePartition}
\title{Preview the full partitioning determined by a DatetimePartitioningSpecification}
\usage{
GenerateDatetimePartition(project, spec)
}
\arguments{
\item{project}{character. Either (1) a character string giving the unique alphanumeric
identifier for the project, or (2) a list containing the element projectId with this
identifier.}

\item{spec}{list. Datetime partition specification returned by
\code{CreateDatetimePartitionSpecification}}
}
\value{
list describing datetime partition with following components
\itemize{
  \item projectId. Character string the id of the project this partitioning applies to.
  \item datetimePartitionColumn. Character string the name of the column whose values
    as dates are used to assign a row to a particular partition.
  \item dateFormat. Character string the format (e.g. "%Y-%m-%d %H:%M:%S") by which the
    partition column was interpreted (compatible with strftime
    [https://docs.python.org/2/library/time.html#time.strftime]).
  \item autopilotDataSelectionMethod. Character string Whether models created
    by the autopilot use "rowCount" or "duration" as their dataSelectionMethod.
  \item validationDuration. Character string the validation duration specified when
    initializing the partitioning - not directly significant if the backtests have been
    modified, but used as the default validationDuration for the backtests.
  \item availableTrainingStartDate. Character string The start date of the available training
    data for scoring the holdout.
  \item availableTrainingDuration. Character string The duration of the available training data
    for scoring the holdout.
  \item availableTrainingRowCount. integer The number of rows in the available training data for
    scoring the holdout. Only available when retrieving the partitioning after setting the
    target.
  \item availableTrainingEndDate. Character string The end date of the available training data
    for scoring the holdout.
  \item primaryTrainingStartDate. Character string The start date of primary training data for
    scoring the holdout.
  \item primaryTrainingDuration. Character string The duration of the primary training data for
    scoring the holdout.
  \item primaryTrainingRowCount. integer The number of rows in the primary training data for
    scoring the holdout. Only available when retrieving the partitioning after setting the
    target.
  \item primaryTrainingEndDate. Character string The end date of the primary training data for
    scoring the holdout.
  \item gapStartDate. Character string The start date of the gap between training and holdout
    scoring data.
  \item gapDuration. Character string The duration of the gap between training and holdout
    scoring data.
  \item gapRowCount. integer The number of rows in the gap between training and holdout scoring
    data.
  Only available when retrieving the partitioning after setting the target.
  \item gapEndDate. Character string The end date of the gap between training and holdout scoring
    data.
  \item holdoutStartDate. Character string The start date of holdout scoring data.
  \item holdoutDuration. Character string The duration of the holdout scoring data.
  \item holdoutRowCount. integer The number of rows in the holdout scoring data.
    Only available when retrieving the partitioning after setting the target.
  \item holdoutEndDate. Character string The end date of the holdout scoring data.
  \item numberOfBacktests. integer the number of backtests used.
  \item backtests. data.frame of partition backtest. Each elemnet represent one backtest and has
    following components:
    index, availableTrainingStartDate, availableTrainingDuration, availableTrainingRowCount,
    availableTrainingEndDate, primaryTrainingStartDate, primaryTrainingDuration,
    primaryTrainingRowCount, primaryTrainingEndDate, gapStartDate,  gapDuration, gapRowCount,
    gapEndDate, validationStartDate, validationDuration, validationRowCount,
    validationEndDate, totalRowCount.
  \item useTimeSeries logical. Whether the project is a time series project (if TRUE) or an OTV
    project which uses datetime partitioning (if FALSE).
  \item defaultToAPriori logical. Whether the project defaults to treating features as a priori.
    A priori features are time series features that are expected to be known for dates in the
    future when making predictions (e.g., "is this a holiday").
  \item featureDerivationWindowStart integer. Offset into the past to define how far
    back relative to the forecast point the feature derivation window should start. Only used for
    time series projects. Expressed in terms of the \code{timeUnit} of the
    \code{datetimePartitionColumn}.
  \item featureDerivationWindowEnd integer. Offset into the past to define how far back relative
    to the forecast point the feature derivation window should end. Only used for
    time series projects. Expressed in terms of the \code{timeUnit} of the
    \code{datetimePartitionColumn}.
  \item forecastWindowStart integer. Offset into the future to define how far forward relative
    to the forceast point the forecaset window should start. Only used for time series
    projects. Expressed in terms of the \code{timeUnit} of the \code{datetimePartitionColumn}.
  \item forecastWindowEnd integer. Offset into the future to define how far forward relative to
    the forceast point the forecaset window should end. Only used for time series
    projects. Expressed in terms of the \code{timeUnit} of the \code{datetimePartitionColumn}.
  \item totalRowCount. integer the number of rows in the project dataset.
    Only available when retrieving the partitioning after setting the target. Thus it will be
    null for GenerateDatetimePartition and populated for GetDatetimePartition.
  }
}
\description{
Based on the project dataset and the partitioning specification, inspect the full
partitioning that would be used if the same specification were passed into SetTarget
}
\examples{
\dontrun{
  projectId <- "59a5af20c80891534e3c2bde"
  partitionSpec <- CreateDatetimePartitionSpecification("date_col")
  GenerateDatetimePartition(projectId, partitionSpec)
}
}
