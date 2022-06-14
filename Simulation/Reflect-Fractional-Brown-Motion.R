BM <- function(x=0, t0=0, T=1, N=100){
  if(T<= t0) stop("wrong times")
  dt <- (T-t0)/N
  t <- seq(t0,T, length=N+1)
  X <- ts(cumsum(c(x,rnorm(N)*sqrt(dt))),start=t0, deltat=dt)
  return(invisible(X))
}
RBM = function(start = 0, end = 1, c = 1){
  B = BM(x = 0, t0 = start, T = end, N = end*100)
  Q_B = c()
  for(i in 1:length(B)){
    Q_prime = B[i]-B[1:i]-c*((i-1)/100-seq(from = start, to = (i-1)/100, by = 1/100))
    Q_B[i] = max(Q_prime)
  }
  return(ts(data = Q_B, start = start, end = end, frequency = 100))
}
MRBM = function(start = 0, end = 1, c = 1){
  B = BM(x = 0, t0 = start, T = end, N = end*100)
  Q_B = c()
  for(i in 1:length(B)){
    Q_prime = B[i]-B[1:i]-c*((i-1)/100-seq(from = start, to = (i-1)/100, by = 1/100))
    Q_B[i] = max(Q_prime)
    Q_B[i] = max(Q_B[1:i])
  }
  return(ts(data = Q_B, start = start, end = end, frequency = 100))
}
