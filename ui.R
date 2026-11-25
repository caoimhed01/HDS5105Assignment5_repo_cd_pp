##this is for the ui##test##############
l

#packages required installed and loaded 

library(shiny)
library(shiny)
library(ggplot2)

#start on UI#

ui<- fluidPage(theme = shinytheme("united"),
               navbarPage("The Digoxin Trial"), 
               sidebarLayout(
                 sidebarPanel(
                   selectInput(inputId="Treatment Group", label="Select Participant Treatment Group:", choices=c("Placebo", "Digoxin"), 
                               multiple=FALSE),
                   
                   radioButtons(inputId="Sex",
                                label="Select Participant Sex:", 
                                choices=c("Female", "Male")), 
                   
                   sliderInput("BMI", "Select Body Mass Index", min = 10, max=100, value=c(20,70)), 
                   sliderInput("year", "Select participants Birth Year:", min=1964, max=2016, value=1992, step=1, animate=TRUE)
                 ), mainPanel()
               ))


