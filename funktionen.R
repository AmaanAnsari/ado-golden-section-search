## a
## Range: -1 bis 3
f_a <-function(x){
  sin(10*pi*x)/(2*x)+(x-1)^4
}
#plot(f_a, xlim=c(-1, 3))

## b
## Range: 4-6
f_b <- function(x){
  sin(x)+sin((10/3)*x)
}
#plot(f_b, xlim=c(4, 6))


## c
## Range: -10 bis -8
f_c <- function(x){
  -(16*x^2-24*x+5)*exp(-x)
}
#plot(f_c, xlim=c(-10, -8))

## d
## Range:
f_d <- function(x){
  -(1.4-3*x)*sin(18*x)
}
#plot(f_d, xlim=c(19, 20))

## e
## Range: 0-2
f_e <- function(x){
  -(x + sin(x)) * exp(-x^2)
}
#plot(f_e,xlim=c(0,2))