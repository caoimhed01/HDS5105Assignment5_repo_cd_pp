##this is for the ui##test##############

#packages required installed and loaded 

library(shiny)
library(shinythemes)
library(bslib)
library(ggplot2)
library(shinydashboard)

#start on UI#

sidebar<-dashboardSidebar(width=250,sidebarSearchForm(textId="searchText", buttonId ="searchButton", label="Search..."),sidebarMenu(
    menuItem("Home", tabName ="Home", icon=icon("home")), 
    menuItem("Participants", tabName = "Widgets", icon=icon("users")))
  )
body<-dashboardBody(
    tags$head(tags$style(HTML('.main-header .logo{
                              font-family: "Georgia", Times, "Times New Roman", serif;
                              font-weight: bold;
                              font-size:32px;}'))),
    tabItems(tabItem(tabName = "Home", 
    fluidRow(box(title="Proportion of Participants in Trial",
    plotOutput("Proportion _of_Participants in Trial", height=250)),
    box(title="Select Patients Age:", sliderInput("slider","Patients Age:", min=10, max=100, value=45))
)), 
tabItem(tabName = "Widgets", h2("Widgets tab content"))))

dashboardPage(skin="black",
              dashboardHeader(title = "Digoxin Trial", titleWidth = 250),sidebar, body)
