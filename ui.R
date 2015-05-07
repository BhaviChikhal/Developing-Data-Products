library(shiny)

# Define UI with mosquito heat map or Chicago

shinyUI(pageWithSidebar(
        
        #Application Title
        headerPanel("Mosquito Heat Map of Chicago"),
        
        # Sidebar with a slider input for month
        sidebarPanel(
                sliderInput("dMonth", 
                            "Month of observation:", 
                            min = 5,
                            max = 10, 
                            value = 5),
                
                sliderInput("dYear", 
                            "Year of observation:", 
                            min = 2007,
                            max = 2013, 
                            value = 2007,
                            step = 2),
                selectInput("species",
                            "Mosquito Species",
                            choices = c("CULEX RESTUANS","CULEX PIPIENS","CULEX PIPIENS/RESTUANS",
                                        "CULEX TERRITANS","CULEX SALINARIUS","CULEX TARSALIS")
                )
        ),
        
        # Summary of dataframe
        mainPanel(
        # Show a plot heatmap
                plotOutput("MapPlot"),

        # Show the mean of virus carrying mosquitos
                h4("Total Number of Mosquitos"),
                verbatimTextOutput("summary") 
        )
))

        