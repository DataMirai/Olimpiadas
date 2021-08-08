source("Other/data_cleaning.R")


body <- dashboardBody(
  fluidRow( 
    uiOutput("dark_mode"),
    
    tabItems(
      tabItem("medallas",
              h2("Medallas", style="margin:15px;"),
              box( width = 12,
                   
                   column(width=6,
                          selectInput("estacion_medallas", label=h5("Selecciona estación:"), choices = list("Verano" = "Summer", "Invierno" = "Winter"), selected = "Verano")),
                   column(width=6,
                          sliderInput("any_medallas", label=h5("Selecciona año:"), min = min(Olimpiadas$Year), max = max(Olimpiadas$Year), step= 4, value = c(1992, 2016))),
                   selectInput("pais_medallas", "Selecciona los países:", 
                               choices = Olimpiadas$NOC, multiple = TRUE, selected = "ESP"),
                   plotlyOutput("medallas", height = 300),
                   dataTableOutput("table_medallas")
                   )),
      
      tabItem("pais",
              h2("Por país", style="margin:15px;"),
              box( width = 12,
                   
                   column(width=6,
                          selectInput("estacion_pais", label=h5("Selecciona estación:"), 
                                      choices = list("Verano" = "Summer", "Invierno" = "Winter"), selected = "Verano"),
                          sliderInput("any_pais", label=h5("Selecciona año:"), min = min(Olimpiadas$Year), max = max(Olimpiadas$Year), 
                                      step= 4, value = c(1992, 2016))),
                   
                   column(width=6,
                          selectInput("pais_pais", "Selecciona un país:", 
                               choices = Olimpiadas$NOC, multiple = F, selected = "ESP"),
                          selectInput("deporte_pais", "Selecciona deportes:", 
                                      choices = Olimpiadas$Sport, multiple = T, selected = "Basketball")
                          )),
              box(width = 12,
                   plotlyOutput("pais", height = 300),
                   dataTableOutput("table_pais")
              )),
      
      tabItem("deporte",
              h2("Por deportes", style="margin:15px;"),
              box( width = 12,
                   
                   column(width=6,
                          selectInput("estacion_deporte", label=h5("Selecciona estación:"), 
                                      choices = list("Verano" = "Summer", "Invierno" = "Winter"), selected = "Verano"),
                          sliderInput("any_deporte", label=h5("Selecciona año:"), min = min(Olimpiadas$Year), max = max(Olimpiadas$Year), 
                                      step= 4, value = c(1992, 2016))),
                   
                   column(width=6,
                          selectInput("deporte_deporte", "Selecciona deportes:", 
                                      choices = Olimpiadas$Sport, multiple = F, selected = "Basketball"),
                          selectInput("pais_deporte", "Selecciona un país:", 
                                      choices = Olimpiadas$NOC, multiple = T, selected = "ESP")
                   )),
              box(width = 12,
                  plotlyOutput("deporte", height = 300),
                  dataTableOutput("table_deporte")
              )),
      
      tabItem("atletas",
              h2("Por deportes", style="margin:15px;"),
              box( width = 12, style = "overflow-x: scroll;",
                   dataTableOutput("table_atletas")))
                              
                              )))

