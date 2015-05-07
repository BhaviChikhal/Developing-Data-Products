library(shiny)
library(ggmap)
library(dplyr)
library(lubridate)

# read in the data and the map
data <- read.csv("train.csv")
add_data <- read.csv("additional_data.csv")
map <- readRDS("mapdata_copyright_openstreetmap_contributors.rds")

# make a new variable for month
data <- mutate(data,Date = ymd(Date))
data <- mutate(data,dmonth = month(Date))
data <- mutate(data,dyear = year(Date))
data <- mutate(data, species=as.factor(Species))

# make a new variable for presence or absence of West Nile Virus
data <- mutate(data,AbsPres = ifelse(data$WnvPresent==0,"Absence","Presence"))

#select only the data columns needed
data <- select(data,dmonth,dyear,Longitude,Latitude,species,NumMosquitos,AbsPres)

# bind addition data for missing months (prevents error messages)
data <- rbind(data,add_data)

#Define server logic required to generate and plot a mosquito heat map of chicago
shinyServer(function(input, output) {
        
        dataInput <- reactive({
                dataf <- filter(data,dmonth==input$dMonth,dyear==input$dYear,species == input$species)
        })
                
        # plot map 
        output$MapPlot <- renderPlot({
                df <- dataInput()
                # generate map of Chicago
                ggmap(map) +
                        geom_point(data=df,aes(x=Longitude,y=Latitude,colour=AbsPres,size=NumMosquitos),alpha=0.5)+
                        facet_grid(.~AbsPres)
        })
        
        # render a summary data
        output$summary <- renderPrint({
                dataset <- dataInput()
                sum(dataset$NumMosquitos)
        })

})