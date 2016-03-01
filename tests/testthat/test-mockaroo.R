context("mockaroo")
test_that("mockaroo trivially works as expected", {
  basicSchema <- data.frame(name = "blah"
                            , percentBlank = 0
                            , type = "Color")
  expect_error(mockaroo(
    "json"
    , list(key = "48b71860"
         , count = 10)
    , schema = jsonlite::toJSON(basicSchema)
  ) , NA)
})
