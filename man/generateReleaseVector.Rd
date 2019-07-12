% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/MGDrivE-Releases.R
\name{generateReleaseVector}
\alias{generateReleaseVector}
\title{Make List of Modified Mosquito Releases}
\usage{
generateReleaseVector(driveCube = driveCube,
  releasesParameters = releasesParameters, sex = "M")
}
\arguments{
\item{driveCube}{gene-drive cube}

\item{releasesParameters}{A list containing the releasesStart, releasesNumber
releasesInterval, and releaseProportion named values.}

\item{sex}{character in 'M','F'}
}
\description{
Sets up a release schedule for a single patch, calls \code{\link{basicRepeatedReleases}} internally.
}
\examples{
# setup a drive cube, using Mendelian as the example
cube <- cubeMendelian()

# setup release parameter list
#  releasesStart is the time of first release
#  releasesNumber is the number of releases
#  releasesInterval is the number of days between releases
#  releaseProportion is the number of mosquitoes released
relParams <- list(releasesStart = 25, releasesNumber = 1,
                  releasesInterval = 0, releaseProportion = 10)

# generate male releases
mRelVec <- generateReleaseVector(driveCube = cube,
                                 releasesParameters = relParams,
                                 sex = "M")

# generate female releases
fRelVec <- generateReleaseVector(driveCube = cube,
                                 releasesParameters = relParams,
                                 sex = "F")

}