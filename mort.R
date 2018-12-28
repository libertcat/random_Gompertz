xz<-c(1,1)
or_size<-c(1,1)
or_size[1]<-1000
for (z in 1:240) {xz[z]<-(z-1)*6}

b<-0.035
a<-0.0001
for (bi in 1:2){
  
for (z in 2:240) {or_size[z]<-or_size[z-1]-round((or_size[z-1]*(a*exp(b*z))),0)}
plot(xz,or_size, pch=17, col=bi)
b<-b+0.055
par(new=TRUE)
}

b<-0.035
a<-0.0001
for (bi in 1:2){
  
  for (z in 2:240) {or_size[z]<-or_size[z-1]-round((or_size[z-1]*(a*exp(b*z))),0)}
  plot(xz,or_size, pch=1, col=bi)
  a<-a+0.0005
  
  par(new=TRUE)
  
}
text(350,200,'b increased')
text(700,600,'a increased')

