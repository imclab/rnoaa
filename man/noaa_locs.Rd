\name{noaa_locs}
\alias{noaa_locs}
\title{Get metadata about NOAA locations.}
\usage{
  noaa_locs(datasetid = NULL, locationid = NULL,
    locationcategoryid = NULL, startdate = NULL,
    enddate = NULL, sortfield = NULL, sortorder = NULL,
    limit = 25, offset = NULL, callopts = list(),
    token = getOption("noaakey", stop("you need an API key for NOAA data")))
}
\arguments{
  \item{datasetid}{A single valid dataset id. Data returned
  will be from the dataset specified, see datasets()
  (required)}

  \item{locationcategoryid}{A valid location id or a chain
  of location category ids in a comma-separated vector.
  Locations returned will be in the location category(ies)
  specified}

  \item{startdate}{A valid ISO formated date (yyyy-mm-dd).
  Data returned will have data after the specified date.
  Paramater can be use independently of enddate (optional)}

  \item{enddate}{Accepts valid ISO formated date
  (yyyy-mm-dd). Data returned will have data before the
  specified date. Paramater can be use independently of
  startdate (optional)}

  \item{sortfield}{The field to sort results by. Supports
  id, name, mindate, maxdate, and datacoverage fields
  (optional)}

  \item{sortorder}{Which order to sort by, asc or desc.
  Defaults to asc (optional)}

  \item{limit}{Defaults to 25, limits the number of results
  in the response. Maximum is 1000 (optional)}

  \item{offset}{Defaults to 0, used to offset the
  resultlist (optional)}

  \item{token}{This must be a valid token token supplied to
  you by NCDC's Climate Data Online access token generator.
  (required) Get an API key (=token) at
  \url{http://www.ncdc.noaa.gov/cdo-web/token}. You can
  pass your token in as an argument or store it in your
  .Rprofile file with an entry like \itemize{ \item
  options("noaakey" = "your-noaa-token") }}

  \item{callopts}{Further arguments passed on to the API
  GET call. (optional)}

  \item{locationid}{A valid location id or a chain of
  location ids seperated by ampersands. Data returned will
  contain data for the location(s) specified (optional)}
}
\value{
  A list containing metadata and the data, or a single
  data.frame.
}
\description{
  From the NOAA API docs: Locations can be a specific
  latitude/longitude point such as a station, or a label
  representing a bounding area such as a city.
}
\examples{
\dontrun{
# All locations, first 25 results
noaa_locs()

# Fetch more information about location id FIPS:37
noaa_locs(locationid='FIPS:37')

# Fetch available locations for the GHCND (Daily Summaries) dataset
noaa_locs(datasetid='GHCND')

# Fetch all U.S. States
noaa_locs(locationcategoryid='ST', limit=52)

# Fetch list of city locations in descending order
noaa_locs(locationcategoryid='CITY', sortfield='name', sortorder='desc')
}
}

