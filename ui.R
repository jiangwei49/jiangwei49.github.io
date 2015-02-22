library(shiny)
shinyUI(pageWithSidebar(
    headerPanel("Child height plot and MSE"),
    sidebarPanel(
        sliderInput('mu', 'Guess at the mean',value = 70, min = 62, max = 74, step = 0.05,),
        p('Guess the mean (mu) and find out the MSE (mean squared error).'),
        p('Data from galton http://www.bun.kyoto-u.ac.jp/~suchii/galton86.html')
    ),
    mainPanel(
        h4('You selected '),
        verbatimTextOutput("oid1"),
        h4('The MSE is '),
        verbatimTextOutput("oid2"),
        plotOutput('newHist')
    )
))