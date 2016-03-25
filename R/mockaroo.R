#' Generate data from mockaroo
#'
#' By supplying a number of parameters
#' and a target schema, this function
#' returns mock data.
#'
#' @param outputFormat Desired response format c("csv", "json", "txt", "custom")
#' @param queryArgs List of arguments regarding the overall query, must include "key = mykey"
#' @param schema A JSON representation of the desired schema. \href{https://www.mockaroo.com/api/docs#request_body}{Request body}
#'
#' @return Mocked data
#' @export
#'
#' @examples
#'  basicSchema<-data.frame(
#'  name = "blah"
#'  , percentBlank = 0
#'  , type = "Color"
#'  )
#'
#'  mockaroo("json"
#'  , list( key = "48b71860"
#'          , count = 10)
#'  , schema = jsonlite::toJSON(basicSchema)
#'  )
mockaroo <- function(outputFormat
                     , queryArgs
                     , schema) {
  outputFormat <- match.arg(outputFormat
                            , c("csv", "json", "txt", "custom"))

  api <- paste0("http://www.mockaroo.com/api/generate."
                , outputFormat)

  res <- httr::POST(api
                    , query = queryArgs
                    , body = schema)

  return(httr::content(res, as="text"))
}
