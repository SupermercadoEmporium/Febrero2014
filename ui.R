library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Emporium 2014"),
  
  fluidRow(
    
    column(3,
           selectInput("select", label = h3("Primera Categoria (Antecedente)", style ="color:#297418;"), 
                       choices =  vec_aux[3:40]), tableOutput("febrero")),
    column(3,
           selectInput("select2", label = h3("Segunda Categoria (Consecuente)", style = "color:#dd21d5;"), 
                       choices =vec_aux[3:40]), tableOutput("febrero2"))
  ),
  
  titlePanel("Febrero"),
  sidebarLayout(
    sidebarPanel( "Resumen Febrero",
                  style = "color:#2183dd;",
                  tableOutput("confidencefebrero"),
                  tableOutput("liftfebrero")
    ),
    mainPanel()
  ),
  
  sidebarLayout(
    sidebarPanel( "Productos más vendidos",
                  textOutput("tablanamecat1febrero"),
                  style = "color:#297418;",
                  textOutput("tablaprobcat1febrero"),
                  textOutput("tablanamecat2febrero"),
                  textOutput("tablaprobcat2febrero"),
                  textOutput("tablanamecat3febrero"),
                  textOutput("tablaprobcat3febrero"),
                  textOutput("tablanamecat4febrero"),
                  textOutput("tablaprobcat4febrero"),
                  textOutput("tablanamecat5febrero"),
                  textOutput("tablaprobcat5febrero")),
    
    
    sidebarPanel( "Productos más vendidos",
                  textOutput("tabla1namecat1febrero"),
                  style = "color:#dd21d5;",
                  textOutput("tabla1probcat1febrero"),
                  textOutput("tabla1namecat2febrero"),
                  textOutput("tabla1probcat2febrero"),
                  textOutput("tabla1namecat3febrero"),
                  textOutput("tabla1probcat3febrero"),
                  textOutput("tabla1namecat4febrero"),
                  textOutput("tabla1probcat4febrero"),
                  textOutput("tabla1namecat5febrero"),
                  textOutput("tabla1probcat5febrero"))
  )
  
  
))
