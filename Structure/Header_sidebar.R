source("Other/Libraries.R")
source("Other/Urls.R")

## Header ----

header <- dashboardHeader(
  title = "120 años Olimpiadas",
                          tags$li(class="dropdown", tags$a(href= twitter, icon("twitter"), target="_blank")),
                          tags$li(class="dropdown", tags$a(href= linkedin, icon("linkedin"),target="_blank")),
                          tags$li(class="dropdown", tags$a(href= github, icon("github"),target="_blank")),
                          tags$li(class="dropdown", tags$a(href= paypal, icon("paypal"), target="_blank")))

## Sidebar ----

sidebar <- dashboardSidebar(
  sidebarMenu(
    menuItem("Medallas", tabName = "medallas", icon = icon("medal")),
    menuItem("País", tabName = "pais", icon = icon("globe-europe")),
    menuItem("Deporte", tabName = "deporte", icon = icon("swimmer")),
    menuItem("Todos los atletas", tabName = "atletas", icon = icon("running")),
    actionButton("twitter_share",
                 label = "¡Comparte la app!",
                 icon = icon("twitter"),
                 onclick = sprintf("window.open('%s')", tweet)),
    h6("Modo noche:", style="color:white; margin:20px; margin-bottom:0px"),
    prettySwitch(
      inputId = "dark_mode_button", label = "")
  )
)
