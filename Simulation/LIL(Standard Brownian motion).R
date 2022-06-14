maxtime <- 0.3 #the limit time 
percision <- 0.01
simulationtime <- 100000 #the times of simulation
y <- c()
for(i in 1:simulationtime){
  B <- tail(BM(x = 0, t0 = 0, T = maxtime, N = maxtime/percision), n = maxtime/percision) #Creat standard Brownian motion
  t <- seq(from = percision, to = maxtime, by = percision)
  h <- sqrt(2 * t * log(log(1/t)))
  ratio <- B/h
  y <- c(y, max(ratio))
}
png("standard Brownian motion.png")
layout(mat = matrix(c(1,2),2,1, byrow=TRUE),  height = c(2,8))
par(mar=c(0, 3.1, 1.1, 2.1))
boxplot(y , horizontal=TRUE , ylim=c(min(y),max(y)), xaxt="n" , col=rgb(0.2,0.8,0.5,0.5) , frame=F, pch = 18, cex = 0.5)
par(mar=c(4, 3.1, 1.1, 2.1))
hist(y , breaks=40 , col=rgb(0.2,0.8,0.5,0.5) , border=F , main="" , xlab="value of the variable", xlim=c(min(y),max(y)))
abline(v=mean(y),col="red")
axis(side = 1, at=mean(y), labels=T)
dev.off()
