#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(leaflet)
library(dplyr)

# Define UI for application that draws a histogram
shinyUI(
  navbarPage("NFL Player Data",
             tabPanel("Birth Place",
                  titlePanel("Where were NFL Players born?"),
                  sidebarLayout(
                    sidebarPanel(
                      helpText("Dive into the data using these filters!"),
                      checkboxInput("checkbox", "Display Active Players Only?")
                    ),
                    mainPanel(leafletOutput("playermap"))
                  )
                  ))
)
