#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(leaflet)
library(dplyr)


#load in the player data
player_birth = read.csv("player_birth.csv")

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  output$playermap <- renderLeaflet({
    leaflet(player_birth) %>%
      addTiles() %>%
      addMarkers(~player_birth$birth_lon, ~player_birth$birth_lat, popup = ~as.character(player_birth$name))
  })
  
})
