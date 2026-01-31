library(shiny)
library(tidyverse)
library(glue)
library(DT)
# data(squirrel)

# squirrels <- read_csv("../data/squirrels.csv")
penguins <- read_csv("../data/penguins.csv")
squirrels <- read_csv("../data/squirrels.csv")

# faithful |> view()


# primary_fur_color
# running
# other_activities
# 
#

squirrels$running <- as.integer(squirrels$running)

squirrels |> view()

squirrels_color_running <- squirrels |> 
  group_by(primary_fur_color, running) |> 
  summarize(n = n())

squirrels_color_running


