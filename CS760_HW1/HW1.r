# 6.1
# -1
x1 <- seq(-1,0,0.01)
x2 <- seq(0.01,1,0.01)
x <- c(x1,x2)
upr <- c(x1+1,-x2+1)
lwr <- c(-x1-1,x2-1)
plot(x,upr,type='l',ylim=c(-1,1),ylab='y')
points(x,lwr,type='l')

# -2
x <- seq(-1,1,0.01)
upr <- sqrt(1-x^2)
lwr <- -sqrt(1-x^2)
plot(x,upr,type='l',ylim=c(-1,1),ylab='y')
points(x,lwr,type='l')


# -3
x <- seq(-1,1,0.01)
upr <- rep(1,201)
lwr <- rep(-1,201)
left <- seq(-1,1,0.01)
right <- seq(-1,1,0.01)
plot(x,upr,type='l',ylim=c(-1,1),ylab='y')
points(x,lwr,type='l')
points(lwr,left,type='l')
points(upr,right,type='l')



# 7.1
library(MASS)
x <- mvrnorm(n=100,mu=c(1,-1),Sigma=diag(2,2,2))
plot(x)

# 7.2
library(MASS)
x1 <- c()
x2 <- c()
for (i in 1:100){
  u <- runif(1)
  if (u <= 0.3){
    current <- mvrnorm(n=1,mu=c(5,0),Sigma=matrix(c(1,0.25,0.25,1),2,2))
    x1 <- c(x1,current[1])
    x2 <- c(x2,current[2])
  }
  else{
    current <- mvrnorm(n=1,mu=c(-5,0),Sigma=matrix(c(1,-0.25,-0.25,1),2,2))
    x1 <- c(x1,current[1])
    x2 <- c(x2,current[2])
  }
}
plot(x1,x2)





