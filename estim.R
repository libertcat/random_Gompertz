mort<-c(1,1)
mort[1]<-0
temp_mort<-0
for (z in 2:240){
  mort[z]=NA
  rubic<-((or_size[z-1]-or_size[z])/or_size[z-1])
  if (!is.na(rubic)){
  if (rubic<temp_mort) {
    mort[z]=NA
    } else {
    mort[z]<-rubic
    temp_mort<-mort[z]
  }}
  
  }

par(new = T)

plot(seq(1:240),mort, axes=F, xlab=NA, ylab=NA)
axis(side = 4)
mtext(side = 4, line = 3, 'Mortality')

boo <- data.frame(y = mort[1:240], x = seq(240))
mod <- nls(y ~ exp(a+b * x), data = boo, start = list(a = 0, b = 0))
lines(boo$x, predict(mod, list(x = boo$x)))
cc<-coef(mod)
text(20,0.2,paste('-ln(a) = ',toString(-round((cc[1]),5))))
text(20,0.1,paste('b = ',toString(round((cc[2]),5))))

