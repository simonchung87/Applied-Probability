BM <- function(x=0, t0=0, T=1, N=100){
  if(T<= t0) stop("wrong times")
  dt <- (T-t0)/N
  t <- seq(t0,T, length=N+1)
  X <- ts(cumsum(c(x,rnorm(N)*sqrt(dt))),start=t0, deltat=dt)
  return(invisible(X))
}
MPS <- function(x, t0, T, N){
  M <- abs(BM(x, t0, T, N))
  for (i in 1:(N+1)) M[i] <- max(M[1:i])
  return(M)
}