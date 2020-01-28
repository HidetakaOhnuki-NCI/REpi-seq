library(boot)
x=read.delim("e221_H3K27ac_RPKM_Bulk_SC_in_Promoters_200000.bed", header=TRUE)
SC <- x$RandscH3K27ac
as.vector(SC)
sample <- function(SC, d) {
  return(print(SC[d]))
}
Bout=boot(SC, sample, R=25000)
ci=boot.ci(Bout, conf=c(0.90, 0.95, 0.99, 0.999), type="basic") 
sink("e321_Promoters_Rand_SC_H3K27ac.txt")
print (ci) 
sink()
q()
