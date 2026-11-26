##this is for the ui##test##############

#packages required installed and loaded 

library(shiny)
library(shinythemes)
library(bslib)
library(ggplot2)

#start on UI#

ui<- fluidPage(theme=shinytheme("united"),
               titlePanel("The Digoxin Trial"),
               sidebarLayout(sidebarPanel("Sidebar"),mainPanel(
               tabsetPanel(tabPanel("Tab 1", "This is the first tab"), 
                           tabPanel("Tab 2", "This is the second tab"), 
                           tabPanel("Tab 3", "This is the third tab"), 
                           tabPanel("Tab 4", "This is the fourth tab")))))
