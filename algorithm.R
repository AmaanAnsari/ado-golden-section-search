source("funktionen.R")

goldenSectionSearch <- function (func, a, b, steps) {

  a_old <- a
  b_old <- b
  goldenRatio <- 1.6180

  for(i in 1:steps){

    c <- b - (1/goldenRatio) * (b-a)
    d <- a + (1/goldenRatio) * (b-a)

    value_c <- func(c)
    value_d <- func(d)

    if(value_c < value_d){
      b <- d
    }
    else{
      a <- c
    }
  }


  plot(func,xlim=c(a_old,b_old))
  if(value_c < value_d){
    text(c, func(c), paste0('(', c, ', ', func(c), ')'), pos = 3)
    points(c, func(c), col='red')
    #plot(func,xlim=c(a_old,b_old))
    return(paste0('y: ', (min(value_c, value_d)), ', x: ', c))
  }
  else {
    points(d, func(d), col='red')
    text(d, func(d), paste0('(', d, ', ', func(d), ')'), pos = 3)
    return(paste0('y: ', (min(value_c, value_d)), ', x: ', d))
  }
}

steps <- 50000

goldenSectionSearch(f_a, -1, 3, steps)
goldenSectionSearch(f_b, 4, 6, steps)
goldenSectionSearch(f_c, -10, -8, steps)
goldenSectionSearch(f_d, 19, 20, steps)
goldenSectionSearch(f_e, 0, 2, steps)

