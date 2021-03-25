
library(shiny)

shinyUI(fluidPage(
    titlePanel("Pizza Finder"),
    sidebarLayout(
        sidebarPanel(
            h4("use the slider to select your restaurant price range"),
            sliderInput("range", "Price Range", min=5, max=120, 
                        value = c(10,30),pre = "$"),
            submitButton("Submit")
            ),
        mainPanel(
            h1("Pizza Restaurants"),
            leafletOutput("map")
            )
        )
    ))

    