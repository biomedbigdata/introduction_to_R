#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(tidyverse)
library(readxl)

mir_expression <- read_excel("../exercises/mir_expression.xlsx")
mir_expression_tidy <- mir_expression %>% 
    pivot_longer(cols = 3:ncol(mir_expression), 
                 names_sep = "_", 
                 names_to = c("condition", "induced", "replicate", "sample"), 
                 values_to = "expression")

# Define UI for application that draws a histogram
ui <- fluidPage(

    # Application title
    titlePanel("miR Expression"),

    # Sidebar with a slider input for number of bins 
    sidebarLayout(
        sidebarPanel(
            checkboxInput(inputId = "induced", label = "Induced"),
            selectInput(inputId = "condition", label = "Condition", 
                        choices = c("PFC", "Wt", "Ctrl"))
        ),

        # Show a plot of the generated distribution
        mainPanel(
           plotOutput("violinPlot")
        )
    )
)

# Define server logic required to draw a histogram
server <- function(input, output) {

    output$violinPlot <- renderPlot({
        plot_data <- mir_expression_tidy %>% 
            mutate(induced = (induced == "ind")) %>%
            filter(condition == input$condition, induced == input$induced)
        ggplot(plot_data, aes(y = expression, 
                              x = sample,
                              color = replicate)) + 
            geom_bar(stat = "identity") +
            theme_bw() + 
            labs(title = "miRNA expression", subtitle = "some experiment", 
                 x = "Sample", y = "log2 expression") 
    })
}

# Run the application 
shinyApp(ui = ui, server = server)
