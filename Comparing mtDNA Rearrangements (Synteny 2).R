library(reshape2)
library(ggplot2)

real <- matrix(c( 0, mean(858,858,701.98,1126.78,858), 703.37, 
                  0, 0, mean(858,858,701.98,1126.78,858),
                  0, 0, 0
),nrow =3, ncol = 3,byrow = TRUE)
real_norm<-real/sum(real)
format(round(real/sum(real), 3), nsmall = 3)

#adj swaps 

adj_swaps <- matrix(c(0.0,99.999,5.201,0.0,0.0,2.793,0.0,0.0,0.0
                      
),nrow = 3, ncol = 3,byrow = TRUE)
adj_swaps_norm<-adj_swaps/sum(adj_swaps)
adj_swaps_norm
format(round(adj_swaps/sum(adj_swaps), 3), nsmall = 3)
          

# one gap swaps
one_gap_swap<-matrix(c(0.0,19.563,22.138,0.0,0.0,10.212,0.0,0.0,0.0
),nrow = 3, ncol = 3,byrow = TRUE)
one_gap_swap_norm<-one_gap_swap/sum(one_gap_swap)

#two gap swaps
two_gap_swap<-matrix(c(0.0,99.999,100.0,0.0,0.0,6.674,0.0,0.0,0.0 #na=1
),nrow = 3, ncol = 3,byrow = TRUE)
two_gap_swap_norm<-two_gap_swap/sum(two_gap_swap)

#all inversions
all_inv<-matrix(c(0.0,100,8.24,0.0,0.0,5.707,0.0,0.0,0.0), #na=1
                nrow=3,ncol=3,byrow=TRUE)
all_inv_norm<-all_inv/sum(all_inv)

# two reg inversions

two_reg_inv<-matrix(c(0.0,55.215,69.722,0.0,0.0,43.601,0.0,0.0,0.0),
                    nrow=3,ncol=3,byrow=TRUE)
two_reg_inv_norm<-two_reg_inv/sum(two_reg_inv)
# two reg adjacent transpos
adj_trans<-matrix(c(0.0,100,3.785,0.0,0.0,2.273,0.0,0.0,0.0), #na=1
                  nrow=3,ncol=3,byrow=TRUE)
adj_trans_norm<-adj_trans/sum(adj_trans)

#normaliser
normaliser <- matrix(c(0, 1, 1,
                       0, 0, 1,
                       0, 0, 0
                      
),nrow =3, ncol = 3,byrow = TRUE)
normaliser_norm<-normaliser/sum(normaliser)

new_model1<- matrix(c(0,0.0,100,100,0.0,0.0,2.549,0.0,0.0,0.0
),nrow =3, ncol = 3,byrow = TRUE) #emrae
new_model1_norm<-new_model1/sum(new_model1)

new_model2<- matrix(c(0.0, 100,5.103,0.0,0.0,2.792,0.0,0.0,0.0
),nrow =3, ncol = 3,byrow = TRUE) #50 50
new_model2_norm<-new_model2/sum(new_model2)

new_model3<- matrix(c(0.0,75.879,11.019,0.0,0.0,2.471,0.0,0.0,0.0
),nrow =3, ncol = 3,byrow = TRUE) #all swaps
new_model3_norm<-new_model3/sum(new_model3)

sum(abs((new_model1_norm-real_norm)), na.rm=TRUE)
sum(abs((new_model2_norm-real_norm)), na.rm=TRUE)
sum(abs((new_model3_norm-real_norm)), na.rm=TRUE)


sum(abs((all_inv_norm-real_norm)), na.rm=TRUE)
sum(abs((adj_swaps_norm-real_norm)), na.rm=TRUE)
sum(abs((adj_trans_norm-real_norm)), na.rm=TRUE)
sum(abs((one_gap_swap_norm-real_norm)), na.rm=TRUE)
sum(abs((two_gap_swap_norm-real_norm)), na.rm=TRUE)
sum(abs((two_reg_inv_norm-real_norm)), na.rm=TRUE)
sum(abs((normaliser_norm-real_norm)), na.rm=TRUE)



multipliers <- seq(-20, 20, by = .01)
values<-c()
for (y in multipliers) {
  z<-sum(abs((y*new_model3_norm-real_norm)), na.rm=TRUE) #finding m
  values<-append(values,z)
  
}
min(values)
multipliers[which(values==min(values))]

multipliers <- seq(-20, 20, by = .01)
values<-c()
for (y in multipliers) {
  z<-sum(abs((y*new_model2_norm-real_norm)), na.rm=TRUE) #finding m
  values<-append(values,z)
  
}
min(values)
multipliers[which(values==min(values))]

multipliers <- seq(-20, 20, by = .01)
values<-c()
for (y in multipliers) {
  z<-sum(abs((y*new_model1_norm-real_norm)), na.rm=TRUE) #finding m
  values<-append(values,z)
  
}
min(values)
multipliers[which(values==min(values))]

multipliers <- seq(-20, 20, by = .01)
values<-c()
for (y in multipliers) {
  z<-sum(abs((y*all_inv_norm-real_norm)), na.rm=TRUE) #finding m
  values<-append(values,z)
  
}
min(values)
multipliers[which(values==min(values))]

multipliers <- seq(-20, 20, by = .01)
values<-c()
for (y in multipliers) {
  z<-sum(abs((y*two_reg_inv_norm-real_norm)), na.rm=TRUE) #finding m
  values<-append(values,z)
  
}
min(values)
multipliers[which(values==min(values))]

multipliers <- seq(-20, 20, by = .01)
values<-c()
for (y in multipliers) {
  z<-sum(abs((y*adj_swaps_norm-real_norm)), na.rm=TRUE) #finding m
  values<-append(values,z)
  
}
min(values)
multipliers[which(values==min(values))]

multipliers <- seq(-20, 20, by = .01)
values<-c()
for (y in multipliers) {
  z<-sum(abs((y*one_gap_swap_norm-real_norm)), na.rm=TRUE) #finding m
  values<-append(values,z)
  
}
min(values)
multipliers[which(values==min(values))]


multipliers <- seq(-20, 20, by = .01)
values<-c()
for (y in multipliers) {
  z<-sum(abs((y*two_gap_swap_norm-real_norm)), na.rm=TRUE) #finding m
  values<-append(values,z)
  
}
min(values)
multipliers[which(values==min(values))]

multipliers <- seq(-20, 20, by = .01)
values<-c()
for (y in multipliers) {
  z<-sum(abs((y*adj_trans_norm-real_norm)), na.rm=TRUE) #finding m
  values<-append(values,z)
  
}
min(values)
multipliers[which(values==min(values))]

multipliers <- seq(-20, 20, by = .01)
values<-c()
for (y in multipliers) {
  z<-sum(abs((y*normaliser_norm-real_norm)), na.rm=TRUE) #finding m
  values<-append(values,z)
  
}
min(values)
multipliers[which(values==min(values))]