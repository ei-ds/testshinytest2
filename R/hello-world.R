# File: R/hello-world.R

hello_world_app_ui <- function(id) {
  shiny::fluidPage(
    shiny::sliderInput(shiny::NS(id, "n"), "n", 1, nrow(cars), 10),
    shiny::plotOutput(shiny::NS(id, "plot"))
  )
}

hello_world_app_server <- function(id){
  utils::data(cars)
  shiny::moduleServer(id, function(input, output, session) {
    output$plot <- shiny::renderPlot({
      plot(head(cars, input$n), xlim = range(cars[[1]]), ylim = range(cars[[2]]))
    })
  })
}
