shinyUI(pageWithSidebar(
  div(),
  sidebarPanel(
    sliderInput("n", "Number of points", min = 1, max = nrow(mtcars),
                value = 10, step = 1),
    uiOutput("plot_ui")
  ),
  mainPanel(
    ggvis_output("plot"),
    tableOutput("mtc_table")
  )
))
