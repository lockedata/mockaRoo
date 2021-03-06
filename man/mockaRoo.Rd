% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mockaroo.R
\name{mockaroo}
\alias{mockaroo}
\title{Generate data from mockaroo}
\usage{
mockaroo(outputFormat, queryArgs, schema)
}
\arguments{
\item{outputFormat}{Desired response format c("csv", "json", "txt", "custom")}

\item{queryArgs}{List of arguments regarding the overall query, must include "key = mykey"}

\item{schema}{A JSON representation of the desired schema. \href{https://www.mockaroo.com/api/docs#request_body}{Request body}}
}
\value{
Mocked data
}
\description{
By supplying a number of parameters
and a target schema, this function
returns mock data.
}
\examples{
 basicSchema<-data.frame(
 name = "blah"
 , percentBlank = 0
 , type = "Color"
 )

 mockaroo("json"
 , list( key = "48b71860"
         , count = 10)
 , schema = jsonlite::toJSON(basicSchema)
 )
}

