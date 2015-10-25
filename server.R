


shinyServer(
    function(input, output) {
        latDeg <- reactive({trunc(input$lat)})
        latMin <- reactive({trunc((input$lat - trunc(input$lat)) * 60)})
        latSec <- reactive({round(((input$lat - trunc(input$lat))*60-trunc((input$lat - trunc(input$lat)) * 60))* 60, 2)})
        longDeg <- reactive({trunc(input$long)})
        longMin <- reactive({trunc((input$long - trunc(input$long)) * 60)})
        longSec <- reactive({round(((input$long - trunc(input$long))*60-trunc((input$long - trunc(input$long)) * 60))* 60,2)})
        latDMS <- reactive({paste(latDeg(), "  ", latMin(), "' ", latSec(), "''")})
        longDMS <- reactive({paste(longDeg(), " ", longMin(), "' ", longSec(), "''")})
        output$dmslat <- renderText({latDMS()})
        output$dmslong <- renderText({longDMS()})
}
)