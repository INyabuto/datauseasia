# server.R


function(input, output, session){

  getDashboardKpis <- reactive({
    dashboard <- 5
    dashboard
  })

  getInterpretationKpis <- reactive({
    interpretations <- 18
    interpretations
  })

  getCommentKpis <- reactive({
    comments <- 60
    comments
  })

  output$dashboardKpis <- renderPrint({
    dashboard <- getDashboardKpis()
    infoBox(title = "Dashboards", dashboard, icon = icon("tachometer-alt"),
            color = "black", width = 12)

  })

  output$interpretationKpis <- renderPrint({
    interpretations <- getInterpretationKpis()
    infoBox(title = "Interpretations",
            interpretations,
            icon = icon("comment-alt"),
            color = "black", width = 12)
  })

  output$commentKpis <- renderPrint({
    comments <- getCommentKpis()
    infoBox(title = "Comments",
            comments,
            icon = icon("comment-dots"),
            color = "black", width = 12)
  })


}

