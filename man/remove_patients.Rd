% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/remove_patients.R
\name{remove_patients}
\alias{remove_patients}
\title{Remove patients from the cohort.}
\usage{
remove_patients(x, patientID, check = TRUE)
}
\arguments{
\item{x}{A REVOLVER cohort.}

\item{patientID}{Id of the patient to remove. It can be a vector.}
}
\value{
A modified cohort without the required patients.
}
\description{
Each patient is identied through its id (\code{patientID});
with this function, you can remove patients, which consists in removing  data
and trees. If you have fit the models or clustered the cohort,
you must re-run the analyses after this modification; for this reason,
any previous result from those analyses is cancelled from the returned object.

Notice also that some drivers might be removed by this function.
}
\examples{
# Data released in the 'evoverse.datasets'
data('TRACERx_NEJM_2017_REVOLVER', package = 'evoverse.datasets')

print(TRACERx_NEJM_2017_REVOLVER)

new_cohort = remove_patients(TRACERx_NEJM_2017_REVOLVER, "CRUK0001")
print(new_cohort)

new_cohort = remove_patients(TRACERx_NEJM_2017_REVOLVER, c("CRUK0002", "CRUK00024"))
print(new_cohort)
}
