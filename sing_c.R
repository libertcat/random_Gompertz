a<-0.000005
b<-0.06

or_size[1]<-1000
for (z in 2:240) {
  
  trout<-or_size[z-1]*(a*exp(b*z))
  if (trout<or_size[z-1]){or_size[z]<-((or_size[z-1]-trout))}  
  else {or_size[z]<-0}
  }
plot(xz,or_size, pch=1, col='red', ylab='Survivorship', xlab='Time')
g<-round((-log(a)),5)
text(100,900,paste('-ln(a) = ',toString(g)), col='red')
text(100,800,paste('b = ',toString(b)), col='red')