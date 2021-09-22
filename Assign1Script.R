#take a screen shot of use the debugger when asked to demonstrate use of the debugger

#use git init (makes the assignment 1 project folder a repository) 
#git add
#git commit
#git log --graph log.txt
#dir.txt
#can be from RStudio and terminal 

#to turn in is the .Rmd file
#the knitted html or pdf

library(tidyverse)

data(mtcars)

mtcars_mpg2<- mtcars[mtcars$mpg<20,]

mtcars_mpg2 <- mtcars_mpg2[, c(1,2,3,4,10)]

source(file="hand_functions.R", echo = TRUE)

library(esquisse)

sum_special <- function(df_x){
  browser()
  try(if(!is.data.frame(df_x)) stop("Input data must be a data frame."))

sp_means<-apply(df_x, MARGIN=2, FUN=mean)
sp_var <-apply(df_x, MARGIN=2, FUN=var)
sp_cov <-cov(df_x)
sp_cor <-cor(df_x)

sp_outputs <- list(sp_means=sp_means,
                   sp_var=sp_var,
                   sp_cov=sp_cov,
                   sp_cor=sp_cor,
                   
                   return(sp_outputs))
}

sp_out <- sum_special(mtcars_mpg2)

sp_out$sp_means