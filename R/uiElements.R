# uiElements.R

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
