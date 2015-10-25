shinyUI(pageWithSidebar(
    # Application Title
    headerPanel("Convert Degree Decimal (DD) Coordinates to Degrees Minutes Seconds(DMS)"),

    sidebarPanel(
        h2('Input the Degree Decimal Coordinates'),
        numericInput('lat', 'Latitude in DD (90 to -90)', 00.0000, min = -90, max = 90, step =.1),
        numericInput('long', 'Longitude in DD (0 to 180)', 00.0000, min = 0, max = 180, step =.1)

    ),
    mainPanel(
        h3('The Degees Minutes Seconds for your coordinates are:'),
        h2('Latitide:'),
        textOutput('dmslat'),
        h2('Longitude:'),
        textOutput('dmslong')
    )
))