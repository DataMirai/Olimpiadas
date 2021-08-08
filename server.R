

source("black_theme.R")
source("light_theme.R")
source("ui.R")
`%>%` <- magrittr::`%>%`


server <- function(input, output) {
  
  output$dark_mode<- renderUI({
    if(input$dark_mode_button == FALSE){ theme_south
    } else if(input$dark_mode_button == TRUE){ theme_nord
      
    }
  })
  
  medalla <- reactive({
    Olimpiadas%>%
      filter(Medal != "NA")%>% 
      filter(Season == input$estacion_medallas)%>%
      filter(Year >=input$any_medallas[1] & Year <= input$any_medallas[2])%>%
      filter(NOC %in% input$pais_medallas)
      
    })
  
  output$medallas <- renderPlotly({
  
    medallas<- medalla()%>%
      group_by(NOC, Medal)%>%
      tally()%>%
      ggplot(aes(x=NOC, y=n, fill=Medal))+
      geom_bar(stat="identity", position="dodge", aes(text=sprintf("País:%s<br>Nº Medallas:%s<br>%s<br>", NOC, n, Medal )))+
      labs(x="País", y="Nº medallas", title = "Medallas ganadas por país")+
      theme_minimal()
    
    ggplotly(medallas, source = "select", tooltip ='text')
  })
  
  output$table_medallas <- renderDataTable({
    
    medalla()%>%
      select(Year, NOC, Sport, Name, Age, Sex, Medal)%>%
      datatable()
  })
  
  pais <- reactive({
    Olimpiadas%>%
      filter(Medal != "NA")%>% 
      filter(Season == input$estacion_pais)%>%
      filter(Year >=input$any_pais[1] & Year <= input$any_pais[2])%>%
      filter(NOC == input$pais_pais)%>%
      filter(Sport %in% input$deporte_pais)
  })
  
  output$pais <- renderPlotly({
    
    pais<- pais()%>%
      group_by(Sport, Medal)%>%
      tally()%>%
      ggplot(aes(x=Sport, y=n, fill=Medal))+
      geom_bar(stat="identity", position="dodge", aes(text=sprintf("Deporte:%s<br>Nº Medallas:%s<br>%s<br>", Sport, n, Medal )))+
      labs(x="País", y="Nº medallas", title = "Medallas ganadas en cada deporte")+
      theme_minimal()
    
    ggplotly(pais, source = "select", tooltip ='text')
  })
  
  output$table_pais <- renderDataTable({
    
    pais()%>%
      select(Year, NOC, Sport, Name, Age, Sex, Medal)%>%
      datatable()
  })
  
  deporte <- reactive({
    Olimpiadas%>%
      filter(Medal != "NA")%>% 
      filter(Season == input$estacion_deporte)%>%
      filter(Year >=input$any_deporte[1] & Year <= input$any_deporte[2])%>%
      filter(NOC  %in% input$pais_deporte)%>%
      filter(Sport == input$deporte_deporte)
  })
  
  output$deporte <- renderPlotly({
    
    deporte<- deporte()%>%
      group_by(Name, Medal, NOC, Sport)%>%
      tally()%>%
      ggplot(aes(x=Name, y=n, fill=Medal))+
      geom_bar(stat="identity", position="dodge", aes(text=sprintf("%s<br>Deporte:%s<br>Nº Medallas:%s<br>%s<br>", Name, Sport, n, Medal, NOC )))+
      facet_grid(.~NOC)+
      labs(x="País", y="Nº medallas", title = "Medallas ganadas en cada deporte")+
      theme_minimal()+
      theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))
    
    ggplotly(deporte, source = "select", tooltip ='text')
  })
  
  output$table_deporte <- renderDataTable({
    
    deporte()%>%
      select(Year, NOC, Sport, Name, Age, Sex, Medal)%>%
      datatable()
  })
  
  output$table_atletas <- renderDataTable({
    
    Olimpiadas%>%
      select(-ID, -Games)%>%
      datatable(selection = "none")
  })
}

shinyApp(ui = ui, server = server)


