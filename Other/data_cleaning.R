Olimpiadas <- read_excel("Other/Olympics.xlsx")

Olimpiadas<-Olimpiadas%>%
  mutate( Medal = case_when( Medal == "Gold" ~ "Oro",
                             Medal == "Silver" ~ "Plata",
                             Medal == "Bronze" ~ "Bronce"
                             ))

