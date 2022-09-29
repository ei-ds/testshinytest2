utils::data(cars)
shinyApp(
  ui = testshinytest2:::hello_world_app_ui("hello"),
  server = function(input, output) {
    testshinytest2:::hello_world_app_server("hello")
  }
)

