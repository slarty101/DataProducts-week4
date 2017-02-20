#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
shinyUI(fluidPage(
  titlePanel("If you like it put a ring on it - Diamond selector."),
                           sidebarLayout(
                              sidebarPanel(
                                
                                helpText("Select how much you're willing to spend on the rock..."),
                                sliderInput('price', 'Price ($)', min=300, max=19000, value=c(300,19000), step=500),
                                helpText("And the response you want from her."),
                                checkboxGroupInput('HerResponse', 'She goes...', c("Meh!"='Meh!',"Could be better..."='Could be better...', "Suppose so.."='Suppose so..', "OK"='OK', "Interesting.."='Interesting..', "Ooh Sparkly!"='Ooh Sparkly!', "WOW!!!"='WOW!!!'), selected = "OK",inline = TRUE),
                                submitButton("Submit"),
                                h3("Instructions"),
                                h4("Use the slider to select how much you're willing to pay for a diamond"),
                                h4("and then select the response you would like from her and click on 'Submit'.")
                                ),
                              mainPanel(
                                img(src="myLogo.gif", width=75, height=75, align = "right"),
                                dataTableOutput('table')
                              ))
))
