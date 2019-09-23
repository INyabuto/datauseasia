# ui.R

sideBarWidth <- 250

shinydashboard::dashboardPage(
  header = panelTitle(sideBarWidth = sideBarWidth),                                                      #*
  sidebar = dashboardSidebar(
    width = sideBarWidth,
    shinyjs::useShinyjs(),
    panelSelectInput()),                             #*
  body = dashboardBody(
    tags$head(
      tags$link(rel = "stylesheet",
                type = "text/css",
                href = "stylesheet.css")
    ),
                       tabPanel("Workshop Level Analytics", value = "tab1",
                                workshopLevelKpis()),
                       tabPanel("Individual Level Analytics", value = "tab2")
                       )

)
