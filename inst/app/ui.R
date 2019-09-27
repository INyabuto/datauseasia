# ui.R

sideBarWidth <- 250

shinydashboard::dashboardPage(
  header = panelTitle(sideBarWidth = sideBarWidth),                                                      #*
  sidebar = dashboardSidebar(
    width = sideBarWidth,
    shinyjs::useShinyjs(),
    panelSelectInput(),
    projectLogo()),                             #*
  body = dashboardBody(
    tags$head(
      tags$link(rel = "stylesheet",
                type = "text/css",
                href = "stylesheet.css")
    ),
                       tabPanel("Workshop Level Analytics", value = "tab1",
                                workshopLevelKpis(),
                                workshopRanking(),
                                workshopTimeAnalysis()),
                       tabPanel("Individual Level Analytics", value = "tab2")
                       )

)
