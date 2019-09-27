# uiElements.R


#'@export
#'@rdname uiElements
panelTitle <- function(sideBarWidth){
  dashboardHeader(title = "Data Use Asia",
                  titleWidth = sideBarWidth)
}

#'
#'@export
#'@rdname uiElements
panelSelectInput <- function(){
  wellPanel(
    selectInput(inputId = "inputType", label = "User list",
                choices = c("File","Example Dataset"),
                selected = "File")
  )
}

#'
#'@export
#'@rdname uiElements
projectLogo <- function(){
    tags$img(class = "project-logo",
             src = "PSI_logo.png"
  )
}


#'@export
#'@rdname uiElements
workshopLevelKpis <- function(){
  fluidRow(
    h4("Key Performance Indicators"),
    box(width = 12,
        infoBoxOutput('dashboardKpis', width = 4),
        infoBoxOutput('interpretationKpis', width = 4),
        infoBoxOutput('commentKpis', width = 4))
  )
}

#'@export
#'@rdname uiElements
workshopRanking <- function(){
  column(
    width = 6,
    fluidRow(
      h4("Users Ranking"),
      box(
        width = 4,
        wellPanel(
          selectInput("numUsers", label = "Top",
                      selected = 0, choices = c(3,5,10)),
          dateRangeInput("usersSpanVar", label = "Time Span",
                         start = "2018-01-01", end = "2019-09-30")
        )
      ),
      box(
        width = 4,
        title = "Most Active Users",
        tableOutput("topUsers")
      ),
      box(
        width = 4,
        title = "Least Active Users",
        tableOutput("lowUsers")
      )
    )
  )

}

#'@export
#'@rdname uiElements
workshopTimeAnalysis <- function(){
  column(
    width = 6,
    h4("Time Analysis"),
    box(
      width = 4,
      wellPanel(
        selectInput("trendVar", label = "Time Axis",
                    selected = "Month", choices = c("Hour","Weekday","Month"))
      )
    ),
    box(
      width = 8,
      plotOutput("time")
    )
  )
}
