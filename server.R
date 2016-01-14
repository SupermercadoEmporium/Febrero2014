#Primer Semestre
#install.packages("shiny")
library(shiny)

shinyServer(function(input, output) {
    
  output$febrero<-renderPrint({
    y<-input$select
    paste(y,round(a_matrix_feb[y,y], digits=4))
  })
  
  output$febrero2<-renderPrint({
    y<-input$select2
    paste(y,round(a_matrix_feb[y,y], digits=4))
  }) 
  
  output$confidencefebrero<-renderPrint({
    x<-input$select
    y<-input$select2
    paste("Confidence",round(a_matrix_feb[x,y]/a_matrix_feb[x,x], digits=4))
  })
  
  output$liftfebrero<-renderPrint({
    x<-input$select
    y<-input$select2
    paste("Lift",round(round(a_matrix_feb[x,y], digits=4)/(round(a_matrix_feb[x,x], digits=4)*round(a_matrix_feb[y,y], digits=4)), digits=4))
  })
  
  output$tablanamecat1febrero<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Feb,
                                 Febrero.Categoriaf3==input$select,
                                 select=c(Febrero.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[1]))
  })
  
  output$tablaprobcat1febrero<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Feb,
                                 Febrero.Categoriaf3==input$select,
                                 select=c(Febrero.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste(round(t[1], digits=4))
  })
  
  output$tablanamecat2febrero<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Feb,
                                 Febrero.Categoriaf3==input$select,
                                 select=c(Febrero.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[2]))
  })
  
  output$tablaprobcat2febrero<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Feb,
                                 Febrero.Categoriaf3==input$select,
                                 select=c(Febrero.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste( round(t[2], digits=4))
  })
  
  output$tablanamecat3febrero<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Feb,
                                 Febrero.Categoriaf3==input$select,
                                 select=c(Febrero.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[3]))
  })
  
  output$tablaprobcat3febrero<-renderText({
    
    Subconjuntos<-na.omit(subset(catg_sin_rep_Feb,
                                 Febrero.Categoriaf3==input$select,
                                 select=c(Febrero.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste( round(t[3], digits=4))
  })
  
  output$tablanamecat4febrero<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Feb,
                                 Febrero.Categoriaf3==input$select,
                                 select=c(Febrero.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:5){
      nam[i]<-names(t[i])
    }
    paste( names(t[4]))
  })
  
  output$tablaprobcat4febrero<-renderText({
    
    Subconjuntos<-na.omit(subset(catg_sin_rep_Feb,
                                 Febrero.Categoriaf3==input$select,
                                 select=c(Febrero.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    paste( round(t[4], digits=4))
  })
  
  output$tablanamecat5febrero<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Feb,
                                 Febrero.Categoriaf3==input$select,
                                 select=c(Febrero.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:5){
      nam[i]<-names(t[i])
    }
    paste( names(t[5]))
  })
  
  output$tablaprobcat5febrero<-renderText({
    
    Subconjuntos<-na.omit(subset(catg_sin_rep_Feb,
                                 Febrero.Categoriaf3==input$select,
                                 select=c(Febrero.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    paste( round(t[5], digits=4))
  })
  
  output$tabla1namecat1febrero<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Feb,
                                 Febrero.Categoriaf3==input$select2,
                                 select=c(Febrero.CATEGORIA1)))
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[1]))
  })
  
  output$tabla1probcat1febrero<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Feb,
                                 Febrero.Categoriaf3==input$select2,
                                 select=c(Febrero.CATEGORIA1)))  
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste( round(t[1], digits=4))
  })
  
  output$tabla1namecat2febrero<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Feb,
                                 Febrero.Categoriaf3==input$select2,
                                 select=c(Febrero.CATEGORIA1)))  
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[2]))
  })
  
  output$tabla1probcat2febrero<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Feb,
                                 Febrero.Categoriaf3==input$select2,
                                 select=c(Febrero.CATEGORIA1)))  
    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste(round(t[2], digits=4))
  })
  
  output$tabla1namecat3febrero<-renderText({
    x<-input$select2
    Subconjuntos<-na.omit(subset(catg_sin_rep_Feb,
                                 Febrero.Categoriaf3==input$select2,
                                 select=c(Febrero.CATEGORIA1)))    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:3){
      nam[i]<-names(t[i])
    }
    paste( names(t[3]))
  })
  
  output$tabla1probcat3febrero<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Feb,
                                 Febrero.Categoriaf3==input$select2,
                                 select=c(Febrero.CATEGORIA1)))  
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:3]/length(sub)
    paste(round(t[3], digits=4))
  })
  
  output$tabla1namecat4febrero<-renderText({
    x<-input$select2
    Subconjuntos<-na.omit(subset(catg_sin_rep_Feb,
                                 Febrero.Categoriaf3==input$select2,
                                 select=c(Febrero.CATEGORIA1)))    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:4]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:4){
      nam[i]<-names(t[i])
    }
    paste( names(t[4]))
  })
  
  output$tabla1probcat4febrero<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Feb,
                                 Febrero.Categoriaf3==input$select2,
                                 select=c(Febrero.CATEGORIA1)))  
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    paste(round(t[4], digits=4))
  })
  
  output$tabla1namecat5febrero<-renderText({
    x<-input$select2
    Subconjuntos<-na.omit(subset(catg_sin_rep_Feb,
                                 Febrero.Categoriaf3==input$select2,
                                 select=c(Febrero.CATEGORIA1)))    
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    nam<-vector(mode="character")
    for(i in 1:5){
      nam[i]<-names(t[i])
    }
    paste( names(t[5]))
  })
  
  output$tabla1probcat5febrero<-renderText({
    Subconjuntos<-na.omit(subset(catg_sin_rep_Feb,
                                 Febrero.Categoriaf3==input$select2,
                                 select=c(Febrero.CATEGORIA1)))  
    sub<-Subconjuntos[,1]; tab_sub<-table(sub);
    tab_sub_order<-sort(tab_sub, decreasing=T)
    t<-tab_sub_order[1:5]/length(sub)
    paste(round(t[5], digits=4))
  })
  
  
})

#Febrero
catg_Feb<-data.frame( Febrero$CATEGORIA1, Febrero$Categoriaf3,
                      Febrero$SLSEQ, Febrero$TICKET)

catg_sin_rep_Feb<-unique(catg_Feb)
