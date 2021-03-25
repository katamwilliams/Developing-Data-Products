
library(shiny)

shinyServer(function(input, output) {
    
    newrestaurants<- reactive({
        pricemax<-input$range[2]
        pricemin<-input$range[1]
        pizzausazip[pizzausazip$menuhigh<=pricemax & pizzausazip$menuhigh>=pricemin
                    ,]
        
    })

    output$map <- renderLeaflet({
        leaflet() %>%
            addTiles()%>%
            setView(lng = -93.85, lat = 37.45, zoom = 3)
    })
    observe({
    leafletProxy("map",data=newrestaurants()) %>%
            clearMarkers() %>%
        addMarkers(popup=pizzausazip$restaurant)
        
    })

})

