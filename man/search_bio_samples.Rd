% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/search.R
\name{search_bio_samples}
\alias{search_bio_samples}
\title{Search for Bio Samples}
\usage{
search_bio_samples(client, dataset_id, individual_id = NULL, name = NULL,
  page_size = NULL, page_token = NULL)
}
\arguments{
\item{client}{A ga4gh_client object}

\item{dataset_id}{The ID of the Dataset to search within}

\item{individual_id}{Return BioSamples for the provided Individual ID}

\item{name}{Return BioSamples with the given name found by case-sensitive string matching.}

\item{page_size}{Specifies the maximum number of results to return in a single page.
If unspecified, the client default will be used.}

\item{page_token}{The continuation token, which is used to page through
large result sets. To get the next page of results, set this parameter to
the value of nextPageToken from the previous response.}
}
\description{
Search for Bio Samples
}
\examples{

ref_client <- ga4gh_client("http://1kgenomes.ga4gh.org", api_location = "")

\dontrun{
library(magrittr)
## Find a dataset to search in
datasets <- ref_client \%>\% search_datasets() \%>\% content()
d_id <- datasets$datasets[[1]]$id

## Search for bio samples in the dataset
bio_samples <- ref_client \%>\% search_bio_samples(d_id) \%>\% content()
bio_samples

}

}

