library(shinytest2)

test_that("{shinytest2} recording: hello", {
  app <- AppDriver$new(name = "hello", height = 789, width = 1139)
  app$expect_values()
  app$stop(signal_timeout = 20000)
})
