\name{noaa}
\alias{noaa}
\title{Get NOAA data}
\usage{
  noaa(dataset = NULL, station = NULL, datatype = NULL,
    startdate = NULL, enddate = NULL, page = NULL,
    year = NULL, month = NULL,
    token = getOption("noaakey", stop("you need an API key NOAA data")))
}
\arguments{
  \item{dataset}{The data set name, see datasets()}

  \item{startdate}{The date format pattern to limit the
  start date of the web service query. This is a string
  date mask represented by "yyyyMMdd" where yyyy is a
  4-digit year, MM is the 2-digit month, and dd is the
  2-digit day.  Optional. (Note: not used for Normals)}

  \item{enddate}{The date format pattern to limit the end
  date of the web service query. This is a string date mask
  represented by "yyyyMMdd" where yyyy is a 4-digit year,
  MM is the 2-digit month, and dd is the 2-digit day.
  Optional. (Note: not used for Normals)}

  \item{page}{Results with over 10 items will be paginated.
  This controls which page of data is returned from the
  service. This variable only accepts an integer as input
  and is optional.}

  \item{year}{Used for Annual Normals to specify which
  yearly set of normals to use. Currently only available
  from 1981-2010, so specify 2010 as the value.  This is a
  string date mask represented by "yyyy" where yyyy is a
  4-digit year.}

  \item{month}{Used for Annual Normals to specify which
  month to display for Annual Normals. Values include
  01-12. This is a string date mask represented by "MM"
  where MM is the 2-digit month,}

  \item{token}{This must be a valid token token supplied to
  you by NCDC's Climate Data Online access token generator.
  Required.}

  \item{station}{The station, within a dataset, see
  function \code{\link{noaa_stations}}}

  \item{datatype}{The data type, see function
  \code{\link{noaa_datatypes}}}
}
\value{
  A data.frame for all datasets, or a list of length two,
  each with a data.frame.
}
\description{
  Get NOAA data
}
\examples{
\dontrun{
# Get data from a particular dataset, station, and data type
noaa(dataset='NORMAL_DLY', station='GHCND:USW00014895', datatype='dly-tmax-normal', year=2010, month=4)
}
}
