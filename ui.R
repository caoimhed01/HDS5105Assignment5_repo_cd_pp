##this is for the ui##test##############

#packages required installed and loaded 

library(shiny)
library(shinythemes)
library(bslib)
library(ggplot2)

#start on UI#

ui<- fluidPage(theme=shinytheme("united"), page_sidebar(title="The Digoxin Trial", sidebar="Sidebar", "Main page")
, mainPanel())
