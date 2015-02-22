library(shiny)
library(UsingR)
data(galton)
shinyServer(
    function(input, output) {
        x <- reactive(input$mu)
        output$oid1 <- renderPrint({x()})
        
        
        output$newHist <- renderPlot({
            hist(galton$child, xlab='child height', col='lightblue',main='Histogram')
            mu <- x()
            lines(c(mu, mu), c(0, 200),col="red",lwd=5)
            mse <- mean((galton$child - mu)^2)
            text(63, 150, paste("mu = ", mu))
            text(63, 140, paste("MSE = ", round(mse, 2)))
            output$oid2 <- renderPrint({round(mse,2)})
        })
    }
)