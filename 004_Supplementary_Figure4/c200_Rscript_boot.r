library(boot) 
x=read.delim("Input_200000L.bed", header=TRUE) 
SC <- x$RandAbDRandIgG 
as.vector(SC) 
sample <- function(SC, d) { 
return(print(SC[d])) 
} 
Bout=boot(SC, sample, R=50000) 
ci=boot.ci(Bout, conf=c(0.90, 0.95, 0.99, 0.999), type="basic") 
sink("Output_CI_95.txt") 
print (ci) 
sink() 
q() 