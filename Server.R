server<-function(input,output){
  output$m1=renderPlot({
    x<-filter(data,data$Price<=input$slider1[2] & data$Price>=input$slider1[1])
    x1<-filter(x,x$Type==input$I1)
    x2<-filter(x1,x1$Country==input$SI1)
    hist(x2$Sugar_Content,main="Histogram Of Sugar_content",xlab="Histogram Of Your Choices")
  })
  
  output$m2<-renderTable({
    x<-filter(data,data$Price<=input$slider1[2] & data$Price>=input$slider1[1])
    x1<-filter(x,x$Type==input$I1)
    x2<-filter(x1,x1$Country==input$SI1)
  })
  }
  

shinyApp(ui,server)
