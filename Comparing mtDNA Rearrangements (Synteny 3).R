library(reshape2)
library(ggplot2)

real <- matrix(c(0, mean(858,856.61,1126.78, 858,243.99), mean(858,856.61,1126.78,858,231), mean(703.98,636.51,1126.78,350,858),
                 0, 0, 243.99, 858,
                 0, 0, 0, 858,
                 0, 0, 0, 0
                 ),nrow =4, ncol = 4,byrow = TRUE)
real_norm<-real/sum(real)
format(round(real/sum(real), 3), nsmall = 3)

#adj swaps 

adj_swaps <- matrix(c(0.0,1.151,1.151,4.661,0.0,0.0,2.587,8.725,0.0,0.0,0.0,11.639,0.0,0.0,0.0,0.0
                      
),nrow = 4, ncol = 4,byrow = TRUE)
adj_swaps_norm<-adj_swaps/sum(adj_swaps)
adj_swaps_norm
format(round(adj_swaps/sum(adj_swaps), 3), nsmall = 3)


# one gap swaps
one_gap_swap<-matrix(c(0.0,100.0,100.0,100.0,0.0,0.0,100.0,8.725,0.0,0.0,0.0,100.0,0.0,0.0,0.0,0.0
),nrow = 4, ncol = 4,byrow = TRUE) #na=5
one_gap_swap_norm<-one_gap_swap/sum(one_gap_swap)

#two gap swaps
two_gap_swap<-matrix(c(0.0,5.483,5.483,21.279,0.0,0.0,100.0,8.725,0.0,0.0,0.0,100.0,0.0,0.0,0.0,0.0
),nrow = 4, ncol = 4,byrow = TRUE) #na=2
two_gap_swap_norm<-two_gap_swap/sum(two_gap_swap)

#all inversions
all_inv<-matrix(c(0.0,3.819,3.819,16.644,0.0,0.0,10.048,36.695,0.0,0.0,0.0,33.887,0.0,0.0,0.0,0.0),
                nrow=4,ncol=4,byrow=TRUE)
all_inv_norm<-all_inv/sum(all_inv)

# two reg inversions

two_reg_inv<-matrix(c(0.0,100,100,100,0.0,0.0,100,100,0.0,0.0,0.0,34.222,0.0,0.0,0.0,0.0),
                  nrow=4,ncol=4,byrow=TRUE) #na=5
two_reg_inv_norm<-two_reg_inv/sum(two_reg_inv)
# two reg adjacent transpos
adj_trans<-matrix(c(0.0,1.039,1.039,3.865,0.0,0.0,2.307,6.317,0.0,0.0,0.0,18.482,0.0,0.0,0.0,0.0),
                  nrow=4,ncol=4,byrow=TRUE) #na=0
adj_trans_norm<-adj_trans/sum(adj_trans)

# any rearrangement model
normaliser <- matrix(c(0, 1, 1, 1,
                 0, 0, 1, 1,
                 0, 0, 0, 1,
                 0, 0, 0, 0
),nrow =4, ncol = 4,byrow = TRUE)
normaliser_norm<-normaliser/sum(normaliser)

#emrae
new_model1<- matrix(c(0.0,1.11,2.538,100,0.0,0.0,1.11,100,0.0,0.0,0.0,100,0.0,0.0,0.0,0.0
),nrow =4, ncol = 4,byrow = TRUE) #na=3
new_model1_norm<-new_model1/sum(new_model1)


#transpos /inv
new_model2<- matrix(c(0.0,1.166,2.96,26.2,0.0,0.0,1.166,6.167,0.0,0.0,0.0,21.627,0.0,0.0,0.0,0.0
),nrow =4, ncol = 4,byrow = TRUE) 
new_model2_norm<-new_model2/sum(new_model2)

#all swaps

new_model3<- matrix(c(0.0,1.061,2.499,16.246,0.0,0.0,1.061,5.328,0.0,0.0,0.0,2.714,0.0,0.0,0.0,0.0
),nrow =4, ncol = 4,byrow = TRUE) 
new_model3_norm<-new_model3/sum(new_model3)

sum(abs((new_model1_norm-real_norm)), na.rm=TRUE)
sum(abs((new_model2_norm-real_norm)), na.rm=TRUE)
sum(abs((new_model3_norm-real_norm)), na.rm=TRUE)


#finding a value for m

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
