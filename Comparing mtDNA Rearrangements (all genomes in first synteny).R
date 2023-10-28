library(reshape2)
library(ggplot2)


# "Real" Matrix to compare Rearrangement models against

real <- matrix(c(0,  670.42, 858,   858,  mean(c(278.95,856.61,858,499.15)), 499.15, 278.95, 858,  
                 0,0,mean(c(858,701.98,639.35,858)), mean(c(858,636.51,703.37,858)), mean(c(858,499.15,856.61,1126.78,703.37,858,636.51,1126.78,703.37,858,636.51,1126.78,639.35,858,701.98,1126.78,703.37,858,636.51,1126.78)),
                 mean(c(1126.78,1125.39,1126.78,1126.78)), mean(c(858,636.51,703.37,858,559.66)), mean(c(278.95,856.61,858,499.15,858)), 
                 0,    0,  0,  703.37, mean(c(858,858,703.37,858,858)), 858,   858,  703.37,
                 0,    0,     0, 0,  mean(c(703.37,703.37,703.37,858,858)),  858,   858,   559.66, 
                 0, 0, 0, 0, 0, mean(c(858,858,858,858,858)), mean(c(858,858,858,499.15,499.15)), mean(c(858,858,858,856.61,499.15)),
                 0,     0,     0, 0,    0,   0,  499.15, 858, 
                 0,     0,     0,     0,  0,   0,   0,  858, 
                 0,     0,     0,     0,     0,     0, 0, 0),nrow =8, ncol = 8,byrow = TRUE)
real
real_norm<-real/sum(real)
colnames(real_norm)<-c("Samaris_cristatus", "(1,2,3,4,5,6,7)", "Bregmaceros_nectabanus",
                       "Saccopharynx_lavenbergi","(1,2,3,4,5,7,6)",   "Phrynoderma_hexadactylum",
                       "Sphenodon_punctatus", "Platysternon_megacephalum"
)

# Adjacent Swaps

adj_swaps <- matrix(c(0,  5.42, 2.79,  12.33,   8.73, 100,  8.73,  10.21, #na=2
                      0, 0, 1.15, 5.42, 1.15, 2.79, 1.15, 5.42,
                      0, 0, 0, 8.73, 2.59,4.66,2.56,2.79,
                      0, 0,   0, 0,     2.79,  4.66,  2.79, 100,     
                      0,  0,  0, 0,    0,     1.15, 2.79,  8.73,   
                      0, 0, 0, 0, 0, 0, 5.48, 22.14, 
                      0,  0,   0,   0,  0,     0,   0,  9.98, 
                      0,  0,   0,   0,  0,     0,  0,   0
          
),nrow = 8, ncol = 8,byrow = TRUE)
adj_swaps_norm<-adj_swaps/sum(adj_swaps)

colnames(adj_swaps_norm)<-c("Samaris_cristatus", "(1,2,3,4,5,6,7)", "Bregmaceros_nectabanus",
                            "Saccopharynx_lavenbergi","(1,2,3,4,5,7,6)",   "Phrynoderma_hexadactylum",
                            "Sphenodon_punctatus", "Platysternon_megacephalum"
)


# Plot Matrix Distances
format(round(adj_swaps/sum(adj_swaps), 3), nsmall = 3)
adj_swaps_norm/real_norm
distance_mat<-adj_swaps_norm-real_norm
distance_mat
colnames(distance_mat)<-c("Samaris_cristatus", "(1,2,3,4,5,6,7)", "Bregmaceros_nectabanus",
                          "Saccopharynx_lavenbergi","(1,2,3,4,5,7,6)",   "Phrynoderma_hexadactylum",
                          "Sphenodon_punctatus", "Platysternon_megacephalum"
)

data_melt <- melt(distance_mat)  
head(data_melt)
distance_mat_plot <- ggplot(data_melt, aes(x=Var1, y=Var2, fill = value)) + 
  scale_fill_gradient2(low="red", high="green", guide="colorbar") +                         # Create heatmap with ggplot2
  geom_tile(color = "white",lwd = 1.5, linetype = 1) + 
  geom_text(aes(label = round(value,2)), color = "black", size = 4) + 
  theme_classic()+labs(x="",y="", 
                       title=
                         "Differences between Real Distance Matrix 
and Distance Matrix under Adjacent Swaps")
distance_mat_plot          

# 2 region adjacent transpositions
adj_trans<- matrix(c(0, 3.7, 2.27,    100,  6.32, 15.84,  6.32,  9.3,   #na=4
                     0,0,1.04,3.7,1.04,2.27,1.04,3.7,
                     0,  0,  0,    6.32,  2.31,  3.87,  2.21,  2.27,  
                     0,  0,0,     0,    2.27,  3.87,  2.27,   100,  
                     0,    0,0,    0,    0, 1.04,     2.27,  6.32,  
                     0,    0,  0,  0,    0,    0,    3.72,   100,  
                     0,      0, 0,  0,  0,  0,      0,     100,  
                     0,   0,    0,  0,  0,   0,    0,    0),nrow = 8, ncol = 8,byrow = TRUE)
adj_trans_norm<-adj_trans/sum(adj_trans)
format(round(adj_trans/sum(adj_trans), 3), nsmall = 3)
adj_trans_norm/real_norm

#Plot difference matrix
distance_mat<-adj_trans_norm-real_norm
distance_mat
colnames(distance_mat)<-c("Samaris_cristatus", "(1,2,3,4,5,6,7)", "Bregmaceros_nectabanus",
                          "Saccopharynx_lavenbergi","(1,2,3,4,5,7,6)",   "Phrynoderma_hexadactylum",
                          "Sphenodon_punctatus", "Platysternon_megacephalum"
)

data_melt <- melt(distance_mat)  
head(data_melt)
distance_mat_plot <- ggplot(data_melt, aes(x=Var1, y=Var2, fill = value)) + 
  scale_fill_gradient2(low="red", high="green", guide="colorbar") +                         # Create heatmap with ggplot2
  geom_tile(color = "white",lwd = 1.5, linetype = 1) + 
  geom_text(aes(label = round(value,2)), color = "black", size = 4) + 
  theme_classic()+labs(x="",y="", 
                       title=
                         "Differences between Real Distance Matrix 
and Distance Matrix under Two Region 
Adjacent Transpositions")
distance_mat_plot         

#All inversions

all_inv<- matrix(c(0.0,30.618,5.707,100,36.695,32.083,36.695,30.229, #na=4
                   0.0,0.0,3.819,30.618,3.819,5.707,3.819,30.618,
                   0.0,0.0,0.0,36.695,10.048,16.644,10.042,5.707,
                   0.0,0.0,0.0,0.0,5.707,16.644,5.707,100,0.0,
                   0.0,0.0,0.0,0.0,3.819,5.707,36.695,0.0,0.0,
                   0.0,0.0,0.0,0.0,3.857,100,0.0,0.0,0.0,0.0,
                   0.0,0.0,0.0,100,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0
),nrow = 8, ncol = 8,byrow = TRUE)
format(round(all_inv/sum(all_inv), 3), nsmall = 3)
all_inv_norm<-all_inv/sum(all_inv)

#Plot difference matrix
distance_mat<-all_inv_norm-real_norm
distance_mat
colnames(distance_mat)<-c("Samaris_cristatus", "(1,2,3,4,5,6,7)", "Bregmaceros_nectabanus",
                          "Saccopharynx_lavenbergi","(1,2,3,4,5,7,6)",   "Phrynoderma_hexadactylum",
                          "Sphenodon_punctatus", "Platysternon_megacephalum"
)

data_melt <- melt(distance_mat)  
head(data_melt)
distance_mat_plot <- ggplot(data_melt, aes(x=Var1, y=Var2, fill = value)) + 
  scale_fill_gradient2(low="red", high="green", guide="colorbar") +                         # Create heatmap with ggplot2
  geom_tile(color = "white",lwd = 1.5, linetype = 1) + 
  geom_text(aes(label = round(value,2)), color = "black", size = 4) + 
  theme_classic()+labs(x="",y="", 
                       title=
                         "Differences between Real Distance Matrix 
and Distance Matrix under All Inversions")
distance_mat_plot           


#One Gap Swap 
one_gap_swap<-matrix(c(   0,  100, 10.21,    12.33,   8.73,  5.48,    8.73,   6.67,
                          0,0,100,100,100,10.21,100,100,
                          0,     0, 0,    8.73, 100,   100,   100,    10.21, #na=13
                          0,  0,     0,   0,    10.21,  100,   10.21,   2.56, 
                          0,   0,     0,  0,     0,   100,    10.21,   8.73, 
                         0,     0,    0, 0,     0,     0,     1.15, 100,    
                          0,  0,0,      0,  0,     0,          0,   100,   
                          0,     0,  0,0, 0,            0,     0,     0
),nrow = 8, ncol = 8,byrow = TRUE)
format(round(one_gap_swap/sum(one_gap_swap), 3), nsmall = 3)
one_gap_swap_norm<-one_gap_swap/sum(one_gap_swap)
one_gap_swap_norm/real_norm

#Plot difference matrix
distance_mat<-one_gap_swap_norm-real_norm
distance_mat
colnames(distance_mat)<-c("Samaris_cristatus", "(1,2,3,4,5,6,7)", "Bregmaceros_nectabanus",
                          "Saccopharynx_lavenbergi","(1,2,3,4,5,7,6)",   "Phrynoderma_hexadactylum",
                          "Sphenodon_punctatus", "Platysternon_megacephalum"
)

data_melt <- melt(distance_mat)  
head(data_melt)
distance_mat_plot <- ggplot(data_melt, aes(x=Var1, y=Var2, fill = value)) + 
  scale_fill_gradient2(low="red", high="green", guide="colorbar") +                         # Create heatmap with ggplot2
  geom_tile(color = "white",lwd = 1.5, linetype = 1) + 
  geom_text(aes(label = round(value,2)), color = "black", size = 4) + 
  theme_classic()+labs(x="",y="", 
                       title=
                         "Differences between Real Distance Matrix 
and Distance Matrix under One Gap Swaps")
distance_mat_plot         


#Two Gap Swap 


two_gap_swap<-matrix(c( 0, 4.1,  6.67,    12.33,   8.73,  1.15,    8.73,   2.79,   
                        0,0,5.48,4.1,5.48,6.67,5.48,4.1,
                        0,     0, 0,    8.73, 100,    21.28, 100,     6.67,   
                        0,0,   0,      0,     6.67, 21.28,   6.67, 100,     
                        0,  0,  0,      0,     0,  5.48,   6.67,   8.73,   #na=4
                        0,    0, 0,     0,     0,     0,   100,     5.2,    
                        0,   0,0, 0,     0,          0,     0,   100,     
                        0,  0,0,   0, 0,              0,     0,     0     
),nrow = 8, ncol = 8,byrow = TRUE)
format(round(two_gap_swap/sum(two_gap_swap), 3), nsmall = 3)
two_gap_swap_norm<-two_gap_swap/sum(two_gap_swap)
two_gap_swap_norm/real_norm

#Plot difference matrix
distance_mat<-two_gap_swap_norm-real_norm
distance_mat
colnames(distance_mat)<-c("Samaris_cristatus", "(1,2,3,4,5,6,7)", "Bregmaceros_nectabanus",
                          "Saccopharynx_lavenbergi","(1,2,3,4,5,7,6)",   "Phrynoderma_hexadactylum",
                          "Sphenodon_punctatus", "Platysternon_megacephalum"
)

data_melt <- melt(distance_mat)  
head(data_melt)
distance_mat_plot <- ggplot(data_melt, aes(x=Var1, y=Var2, fill = value)) + 
  scale_fill_gradient2(low="red", high="green", guide="colorbar") +                         # Create heatmap with ggplot2
  geom_tile(color = "white",lwd = 1.5, linetype = 1) + 
  geom_text(aes(label = round(value,2)), color = "black", size = 4) + 
  theme_classic()+labs(x="",y="", 
  title=
"Differences between Real Distance Matrix 
and Distance Matrix under Two Gap Swaps")
distance_mat_plot          

# Two region inversions

two_reg_inv<-matrix(c(0.0,43.601,38.582,34.222,19.796,
                    34.222,20.638,100,
                    0.0,0.0,34.222,100, 100,100,43.601,100,
                    0.0,0.0,0.0,43.601,100,43.601,
                    7.939,100,0.0,0.0,0.0,0.0,100,43.601,34.222, #na=13
                    100,0.0,0.0,0.0,0.0,0.0,4.852,100,43.601,0.0,
                    0.0,0.0,0.0,0.0,0.0,100,100
                    ,0.0,0.0,0.0,0.0,0.0,
                    0.0,0.0,100,
                    0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0
                    ),nrow = 8, ncol = 8,byrow = TRUE)
format(round(two_reg_inv/sum(two_reg_inv), 3), nsmall = 3)
two_reg_inv_norm<-two_reg_inv/sum(two_reg_inv)
two_reg_inv_norm/real_norm


distance_mat<-two_reg_inv_norm-real_norm
distance_mat
colnames(distance_mat)<-c("Samaris_cristatus", "(1,2,3,4,5,6,7)", "Bregmaceros_nectabanus",
                          "Saccopharynx_lavenbergi","(1,2,3,4,5,7,6)",   "Phrynoderma_hexadactylum",
                          "Sphenodon_punctatus", "Platysternon_megacephalum"
)

data_melt <- melt(distance_mat)  
head(data_melt)
distance_mat_plot <- ggplot(data_melt, aes(x=Var1, y=Var2, fill = value)) + 
  scale_fill_gradient2(low="red", high="green", guide="colorbar") +                         # Create heatmap with ggplot2
  geom_tile(color = "white",lwd = 1.5, linetype = 1) + 
  geom_text(aes(label = round(value,2)), color = "black", size = 4) + 
  theme_classic()+labs(x="",y="", 
                       title=
                         "Differences between Real Distance Matrix 
and Distance Matrix under Two Region Inversions")
distance_mat_plot         



# "any rearrangement" model
normaliser<-matrix(c( 0,      1, 1,1,  1,      1,   1,   1, 
                      0,         0,     1,   1,1, 1,   1,       1,
                      0,    0,     0,     1, 1, 1, 1,   1,
                      0,     0,     0,     0,   1,   1,1,  1,
                      0,     0,     0,     0,     0,    1,1,1,
                      0,     0,     0,     0,     0,     0,1,1,
                      0,     0,     0,     0,     0,     0,0,1,
                      0,     0,     0,     0,     0,     0,0,0),nrow = 8, ncol = 8,byrow = TRUE)

normaliser_norm<-normaliser/sum(normaliser)

#More Models

#Inversions 50% and Transpositions 50%
model1<-matrix(c(0.0,4.341,2.471,74.438,2.714,1.073,2.714,2.696,0.0,0.0,
                 1.061,4.341,1.061,2.471,1.061,4.341,0.0,0.0,0.0,    
                 2.714,2.499,5.328,2.492,2.471,0.0,0.0,0.0,0.0,
                 2.471,5.328,2.471,79.146,0.0,0.0,0.0,0.0,0.0, 
                 1.061,2.471,2.714,0.0,0.0,0.0,0.0,0.0,0.0,
                 1.078,80.669,0.0,0.0,0.0,0.0,0.0,0.0,0.0,
                 75.742,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0)
                , nrow=8, ncol=8, byrow=TRUE)
model1_norm<-model1/sum(model1)

#EMRAE Model
model2<-matrix(c(0.0,100,2.549,100,100,100,100,100,0.0,0.0,1.11,100, #na=16
                 1.11,2.549,1.11,100,0.0,0.0,0.0,100,
                 2.538,100,2.51,2.549,0.0,0.0,0.0,0.0,
                 2.549,100,2.549,100,0.0,0.0,0.0,0.0,0.0,
                 1.11,2.549,100,0.0,0.0,0.0,0.0,0.0,0.0,100,100,
                 0.0,0.0,0.0,0.0,0.0,0.0,0.0,100,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0)
               , nrow=8, ncol=8, byrow=TRUE)
model2_norm<-model2/sum(model2)

#All Swaps model
model3<-matrix(c(0.0,5.5,2.792,100,21.627,19.621,21.627,22.619,0.0,0.0,
                 1.166,5.5,1.166,2.792,1.166,5.5,0.0,0.0,
                 0.0,21.627,2.96,6.167,2.91,2.792,0.0,
                 0.0,0.0,0.0,2.792,6.167,2.792,100,0.0,0.0, #na=4
                 0.0,0.0,0.0,1.166,2.792,21.627,0.0,0.0,
                 0.0,0.0,0.0,0.0,4.067,100,0.0,0.0,0.0,0.0,0.0,0.0,0.0,100,
                 0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0), nrow=8, ncol=8, byrow=TRUE)
model3_norm<-model3/sum(model3)

# Sum of Absolute Differences
sum(abs((all_inv_norm-real_norm)), na.rm=TRUE)
sum(abs((adj_swaps_norm-real_norm)), na.rm=TRUE)
sum(abs((adj_trans_norm-real_norm)), na.rm=TRUE)
sum(abs((one_gap_swap_norm-real_norm)), na.rm=TRUE)
sum(abs((two_gap_swap_norm-real_norm)), na.rm=TRUE)
sum(abs((two_reg_inv_norm-real_norm)), na.rm=TRUE)
sum(abs((normaliser_norm-real_norm)), na.rm=TRUE)
sum(abs((model1_norm-real_norm)), na.rm=TRUE)
sum(abs((model2_norm-real_norm)), na.rm=TRUE)
sum(abs((model3_norm-real_norm)), na.rm=TRUE)


#Mean instead of finding real minimum value
sum(abs(((1/mean(real_norm/all_inv_norm, na.rm=TRUE))*all_inv_norm-real_norm)), na.rm=TRUE)
sum(abs((1/mean(real_norm/adj_swaps_norm, na.rm=TRUE)*adj_swaps_norm-real_norm)), na.rm=TRUE)
sum(abs((1/mean(real_norm/adj_trans_norm, na.rm=TRUE)*adj_trans_norm-real_norm)), na.rm=TRUE)
sum(abs((1/mean(real_norm/one_gap_swap_norm, na.rm=TRUE)*one_gap_swap_norm-real_norm)), na.rm=TRUE)
sum(abs((1/mean(real_norm/two_gap_swap_norm, na.rm=TRUE)*two_gap_swap_norm-real_norm)), na.rm=TRUE)
sum(abs((1/mean(real_norm/two_reg_inv_norm, na.rm=TRUE)*two_reg_inv_norm-real_norm)), na.rm=TRUE)

# Finding values of k for each model

multipliers <- seq(-20, 20, by = .01)
values<-c()
for (y in multipliers) {
  z<-sum(abs((y*model3_norm-real_norm)), na.rm=TRUE) #finding k
  values<-append(values,z)
  
}
min(values)
multipliers[which(values==min(values))]

multipliers <- seq(-20, 20, by = .01)
values<-c()
for (y in multipliers) {
  z<-sum(abs((y*model2_norm-real_norm)), na.rm=TRUE) #finding k
  values<-append(values,z)
  
}
min(values)
multipliers[which(values==min(values))]

multipliers <- seq(-20, 20, by = .01)
values<-c()
for (y in multipliers) {
  z<-sum(abs((y*model1_norm-real_norm)), na.rm=TRUE) #finding k
  values<-append(values,z)
  
}
min(values)
multipliers[which(values==min(values))]

multipliers <- seq(-20, 20, by = .01)
values<-c()
for (y in multipliers) {
  z<-sum(abs((y*all_inv_norm-real_norm)), na.rm=TRUE) #finding k
  values<-append(values,z)
  
}
min(values)
multipliers[which(values==min(values))]

multipliers <- seq(-20, 20, by = .01)
values<-c()
for (y in multipliers) {
  z<-sum(abs((y*two_reg_inv_norm-real_norm)), na.rm=TRUE) #finding k
  values<-append(values,z)
  
}
min(values)
multipliers[which(values==min(values))]

multipliers <- seq(-20, 20, by = .01)
values<-c()
for (y in multipliers) {
  z<-sum(abs((y*adj_swaps_norm-real_norm)), na.rm=TRUE) #finding k
  values<-append(values,z)
  
}
min(values)
multipliers[which(values==min(values))]

multipliers <- seq(-20, 20, by = .01)
values<-c()
for (y in multipliers) {
  z<-sum(abs((y*one_gap_swap_norm-real_norm)), na.rm=TRUE) #finding k
  values<-append(values,z)
  
}
min(values)
multipliers[which(values==min(values))]


multipliers <- seq(-20, 20, by = .01)
values<-c()
for (y in multipliers) {
  z<-sum(abs((y*two_gap_swap_norm-real_norm)), na.rm=TRUE) #finding k
  values<-append(values,z)
  
}
min(values)
multipliers[which(values==min(values))]

multipliers <- seq(-20, 20, by = .01)
values<-c()
for (y in multipliers) {
  z<-sum(abs((y*adj_trans_norm-real_norm)), na.rm=TRUE) #finding k
  values<-append(values,z)
  
}
min(values)
multipliers[which(values==min(values))]

multipliers <- seq(-20, 20, by = .01)
values<-c()
for (y in multipliers) {
  z<-sum(abs((y*normaliser_norm-real_norm)), na.rm=TRUE) #finding k
  values<-append(values,z)
  
}
min(values)
multipliers[which(values==min(values))]


# Make Trees


real_norm[lower.tri(real_norm)] = t(real_norm)[lower.tri(real_norm)]


real[lower.tri(real)] = t(real)[lower.tri(real)]
colnames(real)<-c("Samaris_cristatus", "(1,2,3,4,5,6,7)", "Bregmaceros_nectabanus",
                  "Saccopharynx_lavenbergi","(1,2,3,4,5,7,6)",   "Phrynoderma_hexadactylum",
                  "Sphenodon_punctatus", "Platysternon_megacephalum"
)
plot(upgma(real))
as.Newick(upgma(real))



adj_swaps[lower.tri(adj_swaps)] = t(adj_swaps)[lower.tri(adj_swaps)]
colnames(adj_swaps)<-c("Samaris_cristatus", "(1,2,3,4,5,6,7)", "Bregmaceros_nectabanus",
                       "Saccopharynx_lavenbergi","(1,2,3,4,5,7,6)",   "Phrynoderma_hexadactylum",
                       "Sphenodon_punctatus", "Platysternon_megacephalum"
)
plot(upgma(adj_swaps))
as.Newick(upgma(adj_swaps))
TripletDistance(TQFile(upgma(adj_swaps)),TQFile(upgma(real)))

one_gap_swap[lower.tri(one_gap_swap)] = t(one_gap_swap)[lower.tri(one_gap_swap)]
colnames(one_gap_swap)<-c("Samaris_cristatus", "(1,2,3,4,5,6,7)", "Bregmaceros_nectabanus",
                          "Saccopharynx_lavenbergi","(1,2,3,4,5,7,6)",   "Phrynoderma_hexadactylum",
                          "Sphenodon_punctatus", "Platysternon_megacephalum"
)
plot(upgma(one_gap_swap))
as.Newick(upgma(one_gap_swap))
TripletDistance(TQFile(upgma(one_gap_swap)),TQFile(upgma(real)))



adj_trans[lower.tri(adj_trans)] = t(adj_trans)[lower.tri(adj_trans)]
colnames(adj_trans)<-c("Samaris_cristatus", "(1,2,3,4,5,6,7)", "Bregmaceros_nectabanus",
                       "Saccopharynx_lavenbergi","(1,2,3,4,5,7,6)",   "Phrynoderma_hexadactylum",
                       "Sphenodon_punctatus", "Platysternon_megacephalum"
)
plot(upgma(adj_trans))
as.Newick(upgma(adj_trans))
TripletDistance(TQFile(upgma(adj_trans)),TQFile(upgma(real)))


all_inv[lower.tri(all_inv)] = t(all_inv)[lower.tri(all_inv)]
colnames(all_inv)<-c("Samaris_cristatus", "(1,2,3,4,5,6,7)", "Bregmaceros_nectabanus",
                     "Saccopharynx_lavenbergi","(1,2,3,4,5,7,6)",   "Phrynoderma_hexadactylum",
                     "Sphenodon_punctatus", "Platysternon_megacephalum"
)
plot(upgma(all_inv))
as.Newick(upgma(all_inv))
TripletDistance(TQFile(upgma(all_inv)),TQFile(upgma(real)))


two_reg_inv[lower.tri(two_reg_inv)] = t(two_reg_inv)[lower.tri(two_reg_inv)]
colnames(two_reg_inv)<-c("Samaris_cristatus", "(1,2,3,4,5,6,7)", "Bregmaceros_nectabanus",
                         "Saccopharynx_lavenbergi","(1,2,3,4,5,7,6)",   "Phrynoderma_hexadactylum",
                         "Sphenodon_punctatus", "Platysternon_megacephalum"
)
plot(upgma(two_reg_inv))
as.Newick(upgma(two_reg_inv))
TripletDistance(TQFile(upgma(two_reg_inv)),TQFile(upgma(real)))

two_gap_swap[lower.tri(two_gap_swap)] = t(two_gap_swap)[lower.tri(two_gap_swap)]
colnames(two_gap_swap)<-c("Samaris_cristatus", "(1,2,3,4,5,6,7)", "Bregmaceros_nectabanus",
                          "Saccopharynx_lavenbergi","(1,2,3,4,5,7,6)",   "Phrynoderma_hexadactylum",
                          "Sphenodon_punctatus", "Platysternon_megacephalum"
)
plot(upgma(two_gap_swap))
class(upgma(two_gap_swap))
as.Newick(upgma(two_gap_swap))
TripletDistance(TQFile(upgma(two_gap_swap)),TQFile(upgma(real)))


