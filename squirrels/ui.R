#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    https://shiny.posit.co/
#

library(shiny)

# Define UI for application that draws a histogram
fluidPage(
  
  # Application title
  titlePanel("Squirrel Data"),
  
  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      selectInput("primary_fur_color",
                  "Select a color:",
                  choices = c(
                    "All",
                    squirrels |> 
                      distinct(primary_fur_color) |> 
                      pull() |> 
                      sort()
                    )
                  )
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      fluidRow(
        column(
          width = 4,
          plotOutput("barPlot")
        )
      )
    )
  )
)
