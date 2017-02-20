#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

#get diamond dataset & dplyr for transforms
library(ggplot2)
library(dplyr)
#cut down the datset to our required fields
d <- diamonds[ ,c(1:4,7)]
#and take a sample
set.seed(123)
d <- d[sample(nrow(d), 1000), ]
#add our descriptors
d <- mutate(d, HerResponse = ifelse(grepl("D", color), "Meh!", 
                                    ifelse(grepl("E", color), "Could be better...", 
                                           ifelse(grepl("F", color), "Suppose so..",
                                                  ifelse(grepl("G", color), "OK",
                                                         ifelse(grepl("H", color), "Interesting..",
                                                                ifelse(grepl("I", color), "Ooh Sparkly!",
                                                                       ifelse(grepl("J", color), "WOW!!!", "Other"))))))))
shinyServer(function(input, output) {
  
  # Display the diamonds that correspond to the input value
  output$table <- renderDataTable({ 
    price_seq <- seq(from = input$price[1], to = input$price[2], by = 1)
    data <- filter(d, price %in% price_seq, HerResponse %in% input$HerResponse)
    #data <- filter(d, HerResponse = checkboxGroupInput)
    data <- arrange(data, price)
    
  }, options = list(lengthMenu = c(5, 10, 20), pageLength = 10))
})
