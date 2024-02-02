


test_that("functionOne Errors", {

  #### Creating some simple data.frame

  a <- c(1,2,3,4,5,6)
  b <- c(2,3,4,5,6,7)
  def <- data.frame(a,b)
  correct_obj <- functionOne(def)

  expect_silent(correct_obj)
  expect_equal(correct_obj[1], 6)
  expect_equal(correct_obj[2], 2)

  expect_error(functionOne(), "Please provide the name of the input object!", fixed=TRUE)
  expect_error(functionOne(a), "Only objects of type 'data.frame' are allowed.", fixed=TRUE)

})
