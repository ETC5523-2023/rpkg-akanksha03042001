library(shiny)
library(tidyverse)
library(shinythemes)
library(dplyr)
library(plotly)
library(leaflet)
library(viridis)
library(hrbrthemes)
library(eruptR)

#volcano <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-05-12/volcano.csv')
#eruptions <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-05-12/eruptions.csv')
#events <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-05-12/events.csv')

#tuesdata <- tidytuesdayR::tt_load('2020-05-12')
#tuesdata <- tidytuesdayR::tt_load(2020, week = 20)


#volcano <- tuesdata$volcano


# Define the UI
ui <- fluidPage(theme = shinytheme("cerulean"),
                br(),
                fluidRow(

                  navbarPage(
                    h5("Exploring Earth's Majestic Fire-Breathers"),

                    tabPanel(h5("About"),
                             uiOutput("about")

                    ),

                    tabPanel(h5("Types of Volcano"),
                             titlePanel(h3("Which volcano type is most present worldwide?")),
                             class = "panel1",
                             selectInput(
                               'volcano_type',
                               'Volcano type',
                               choices = volcano$primary_volcano_type,
                               selected = c("Stratovolcano",
                                            "Caldera"),
                               multiple = TRUE
                             ),
                             plotlyOutput('bar_chart1')),


                    tabPanel(h5("Global Eruptions"),
                             class = "panel2",
                             titlePanel(h3("How volcanic eruptions have changed in the past years?")),
                             leafletOutput("map"),
                             sliderInput("yearSlider",
                                         "Select Year",
                                         min = min(eruptions_filtered$end_year),
                                         max = max(eruptions_filtered$end_year),
                                         value = min(eruptions_filtered$end_year),
                                         step = 2)
                    ),

                    tabPanel(h5("Highest Volcanic Elevation"),
                             class = "panel3",
                             titlePanel(h3("Which country has the highest volcanic elevation by region?")),
                             sidebarLayout(
                               sidebarPanel(
                                 checkboxGroupInput(inputId = "country_input",
                                                    label = "Select the Sub Country",
                                                    choices =  unique(volcano_height$region),
                                                    selected = "South America")
                               ),
                               mainPanel(
                                 plotlyOutput("bubble_plot")
                               )
                             )
                    ),

                    tabPanel(h5("Yearly Volcanic eruptions"),
                             class = "panel4",
                             titlePanel(h3("What is the yearly trend of volcanic eruptions?")),
                             sidebarLayout(
                               sidebarPanel(
                                 selectInput(inputId = "year_input",
                                             label = "Select Year",
                                             choices =  new_data$start_year)
                               ),
                               mainPanel(
                                 plotlyOutput("counts_plot")
                               )
                             )
                    )

                  )
                ),


                includeCSS("styles.css")
)


# Define the server
server <- function(input, output) {

  output$about <- renderUI({
    # Render the about.Rmd file to HTML
    rmarkdown::render("about.Rmd")

    about_html <- readLines("about.html")

    # Display the rendered HTML content
    HTML(about_html)
  })

  output$bar_chart1 <- renderPlotly({

    volcano_filtered <- volcano %>%
      filter(primary_volcano_type == input$volcano_type)

    ggplotly(
      volcano_filtered %>%
        ggplot(aes(x = primary_volcano_type, fill = primary_volcano_type)) +
        geom_bar() +
        labs(x = "Volcano Type",
             y = "Total count",
             fill = "Type of Volcano") +
        theme_dark()
    )

  })


  output$map <- renderLeaflet({

    final_eruptions <- eruptions_filtered %>%
      filter(end_year == input$yearSlider)

    leaflet() %>%
      addTiles() %>%
      addMarkers(
        data = final_eruptions,
        lat = ~latitude,
        lng = ~longitude,
        popup = paste("Volcano: ", final_eruptions$volcano_name, "<br>",
                      "Eruption Category: ", final_eruptions$eruption_category)
      )
  })

  output$bubble_plot <- renderPlotly({

    volcano_height <- volcano %>%
      filter(region == input$country_input)

    ggplotly(
      volcano_height %>%
        ggplot(aes(x = country,
                   y = elevation,
                   # size = elevation,
                   col = region)) +
        geom_point() +
        scale_color_viridis(option="mako",
                            discrete = TRUE) +
        theme_dark() +
        theme(axis.text.x = element_text(angle = 45, hjust = 1))

    )

  })


  output$counts_plot <- renderPlotly({

    plot_data <- new_data %>%
      filter(start_year == input$year_input)

    ggplotly(
      plot_data %>%
        ggplot(aes(x = volcano_name,
                   y = vei,
                   fill = volcano_name)) +
        geom_col() +
        labs(x = "Volcano Name",
             y = "Volcanic Explosivity Index",
             title = "No. of Volcanic Eruptions by VEI per year",
             fill = "Volcano Name"
        ) +
        guides(fill = "none") +
        theme_minimal() +
        scale_fill_brewer(palette = "Set1") +
        coord_flip()
    )

  })

}

# Run the app
shinyApp(ui, server)
