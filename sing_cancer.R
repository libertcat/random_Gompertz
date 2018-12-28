a<-0.0001
b<-0.08
#0.08


or_size[1]<-1000
duration<-100
cancer<-rep(0, duration+2)

for (z in 2:240) {
  
  trout<-or_size[z-1]*(a*exp(b*z))
  cancer[z+duration]<-or_size[z-1]*0.001*(exp(0.2*b*z))
  if ((trout+cancer[z])<or_size[z-1]){or_size[z]<-((or_size[z-1]-trout-cancer[z]))}  
  else {or_size[z]<-0}
  }
plot(xz,or_size, pch=1, col='red', ylab='Survivorship', xlab='Time')
text(20,900,paste('a = ',toString(a)), col='red')
text(20,800,paste('b = ',toString(b)), col='red')