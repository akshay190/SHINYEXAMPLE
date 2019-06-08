library(shiny)

ui=fluidPage(titlePanel("Sugar Content across Products and Prices"),
             sidebarLayout(
             sidebarPanel(sliderInput(inputId = "slider1",label = "Price",min=1,max=30250,value=c(0,500),pre="$"),
             radioButtons(
               inputId="I1",
               label="Product Type",
               choices = c(
                 "Beverages"="Beverages",
                 "Cake"="Cake",
                 "Candy"="Candy",
                 "Icecream"="Icecream"
               ),
               selected = "Beverages"),
               selectInput(inputId="SI1",label="Country",choices=sort(as.character(factor(unique(data$Country)))),
                           selected = "CANADA")
               ),
             mainPanel(tabsetPanel(
               tabPanel("",plotOutput("m1"))
             ),
             tabsetPanel(
               tabPanel("",tableOutput("m2"))
             ))))




