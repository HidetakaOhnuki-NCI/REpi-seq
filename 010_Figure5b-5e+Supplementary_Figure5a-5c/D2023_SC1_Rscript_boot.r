library(boot) 
x=read.delim("D2023_SC1_over0_enhancers_w_header.bed", header=TRUE) 
SC <- x$RandSC1 
as.vector(SC) 
sample <- function(SC, d) { 
return(print(SC[d])) 
} 
Bout=boot(SC, sample, R=50000) 
ci=boot.ci(Bout, conf=c(0.90, 0.95, 0.99, 0.999), type="basic") 
sink("D2023_SC1_CI.txt") 
print (ci) 
sink() 
q() 