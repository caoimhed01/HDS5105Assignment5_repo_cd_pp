##this is for the ui##test##############

#packages required installed and loaded 

library(shiny)
library(shinythemes)
library(bslib)
library(ggplot2)
library(shinydashboard)

#start on UI#

ui<- dashboardPage(skin="black",
  dashboardHeader(title = "Digoxin Trial", titleWidth = 250), 
  dashboardSidebar(width=250,sidebarMenu(
    menuItem("Trial Overview", tabName ="Overview", icon=icon("home")), 
    menuItem("Widgets", tabName = "Widgets", icon=icon("th")))
  ),
  dashboardBody(
    tags$head(tags$style(HTML('.main-header .logo{
                              font-family: "Georgia", Times, "Times New Roman", serif;
                              font-weight: bold;
                              font-size:32px;}'))),
    tabItems(tabItem(tabName = "Overview", 
    fluidRow(box(title="Proportion of Participants in Trial",
    plotOutput("Proportion _of_Participants in Trial", height=250)),
    box(title="Select Patients Age:", sliderInput("slider","Patients Age:", min=10, max=100, value=45))
)))
))