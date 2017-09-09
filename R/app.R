library(shiny)
server <- function(input, output) {
    observeEvent(
        input$random_song_selector, {
            output$song <- renderText({select_powerballad()} )
        }
    )

    output$song <- renderText({select_powerballad()} )
}

ui <- fluidPage(
    actionButton("random_song_selector", "Random Song Selector"),
            h3(textOutput("song"))

)

shinyApp(ui = ui, server = server)
