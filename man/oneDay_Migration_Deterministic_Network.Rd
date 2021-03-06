% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Network-Migration.R
\name{oneDay_Migration_Deterministic_Network}
\alias{oneDay_Migration_Deterministic_Network}
\title{Deterministic Inter-Patch Migration}
\usage{
oneDay_Migration_Deterministic_Network()
}
\description{
Deterministic model of interpatch migration from each patch.
\code{popFemale}/\code{popMale} is retrieved from each patch using
\code{\link{get_femalePop_Patch}}/\code{\link{get_malePop_Patch}}. Migration
location is determined from the supplied matrices, \code{private$migrationFemale}
or \code{private$migrationMale}. Final migration status is held in
\code{private$fMoveArray} or \code{private$mMoveMat}. \cr
Batch migration is not used in the deterministic model.
}
\details{
This function handles outbound and inbound migration. See \code{\link{MGDrivE-Model}},
'Migration' section for more details on how inter-patch migration is handled.
}
