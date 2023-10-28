# %% This document is for plotting histograms of the different model simulations 
# Also for finding the median, most frequent value, NA values

library(ggplot2)
theme_update(plot.title = element_text(hjust = 0.5))

#Adjacent Swaps

my_data<-read.csv("{'(1,2)(-2,-1)'_ 1.0}{'(1,-1)'_ 1.0}(A_1,B_1);Max Likelihood csv.csv")
my_data2<-read.csv("{'(1,2)(-2,-1)'_ 1.0}{'(1,-2)(2,-1)'_ 0.5, '(1,-1)'_ 0.5}(A_1,B_1);Max Likelihood csv.csv")
my_data3<-read.csv("{'(1,2)(-2,-1)'_ 1.0}{'(1,-2)(2,-1)'_ 1.0}(A_1,B_1);Max Likelihood csv.csv")
my_data4<-read.csv("{'(1,2)(-2,-1)'_ 1.0}{'(1,2)(-2,-1)'_ 0.25, '(1,2,-1,-2)'_ 0.25, '(1,-2,-1,2)'_ 0.25, '(1,-1)(2,-2)'_ 0.25}(A_1,B_1);Max Likelihood csv.csv")
my_data5<-read.csv("{'(1,2)(-2,-1)'_ 1.0}{'(1,2)(-2,-1)'_ 1.0}(A_1,B_1);Max Likelihood csv.csv")
my_data6<-read.csv("{'(1,2)(-2,-1)'_ 1.0}{'(1,3)(-3,-1)'_ 1.0}(A_1,B_1);Max Likelihood csv.csv")
my_data7<-read.csv("{'(1,2)(-2,-1)'_ 1.0}{'(1,4)(-4,-1)'_ 1.0}(A_1,B_1);Max Likelihood csv.csv")

colnames(my_data) <- c("C1","C2","C3","C4")
colnames(my_data2) <- c("C1","C2","C3","C4")
colnames(my_data3) <- c("C1","C2","C3","C4")
colnames(my_data4) <- c("C1","C2","C3","C4")
colnames(my_data5) <- c("C1","C2","C3","C4")
colnames(my_data6) <- c("C1","C2","C3","C4")
colnames(my_data7) <- c("C1","C2","C3","C4")

summary(my_data[3])
summary(my_data2[3])
summary(my_data3[3])
summary(my_data4[3])
summary(my_data5[3])
summary(my_data6[3])
summary(my_data7[3])


#finding most frequent value
res = hist(unlist(my_data[3]), breaks=1020)
res$mids[which.max(res$counts)]
res = hist(unlist(my_data2[3]), breaks=1020)
res$mids[which.max(res$counts)]
res = hist(unlist(my_data3[3]), breaks=1020)
res$mids[which.max(res$counts)]
res = hist(unlist(my_data4[3]), breaks=1020)
res$mids[which.max(res$counts)]
res = hist(unlist(my_data5[3]), breaks=1020)
res$mids[which.max(res$counts)]
res = hist(unlist(my_data6[3]), breaks=1020)
res$mids[which.max(res$counts)]
res = hist(unlist(my_data7[3]), breaks=1020)
res$mids[which.max(res$counts)]

ggplot()+geom_freqpoly(my_data7, mapping =aes(C3), binwidth=1, colour="pink", alpha=0.5, size=1)+
  geom_freqpoly(my_data, mapping =aes(C3), colour="yellow", binwidth=1, alpha=0.5, size=1) +
  geom_freqpoly(my_data3, mapping =aes(C3), colour="orange", binwidth=1, alpha=0.5, size=1)+
  geom_freqpoly(my_data4, mapping =aes(C3), binwidth=1, colour="blue", alpha=0.5, size=1)+
  geom_freqpoly(my_data6, mapping =aes(C3), binwidth=1, colour="purple", alpha=0.5, size=1)+
  geom_freqpoly(my_data2, mapping =aes(C3), binwidth=1, colour="red", alpha=0.5, size=1)+
  geom_freqpoly(my_data5, mapping =aes(C3), binwidth=1, size=1)+
  theme_minimal() +
  labs(title="Errors in Time Estimates of Adjacent Swaps Under Different Comparing Models
    ", x="(maximum likelihood time estimate−real time)")

median(unlist(my_data[3]))
median(unlist(my_data2[3]))
median(unlist(my_data3[3]))
median(unlist(my_data4[3]))
median(unlist(my_data5[3]))
median(unlist(my_data6[3]))
median(unlist(my_data7[3]))

median(unlist(my_data[3]), na.rm=TRUE)
median(unlist(my_data2[3]), na.rm=TRUE)
median(unlist(my_data3[3]), na.rm=TRUE)
median(unlist(my_data4[3]), na.rm=TRUE)
median(unlist(my_data5[3]), na.rm=TRUE)
median(unlist(my_data6[3]), na.rm=TRUE)
median(unlist(my_data7[3]), na.rm=TRUE)

sum(is.na(my_data[3]))
sum(is.na(my_data2[3]))
sum(is.na(my_data3[3]))
sum(is.na(my_data4[3]))
sum(is.na(my_data5[3]))
sum(is.na(my_data6[3]))
sum(is.na(my_data7[3]))


#All inversions
my_data<-read.csv("{'(1,-2)(2,-1)'_ 0.5, '(1,-1)'_ 0.5}{'(1,-1)'_ 1.0}(A_1,B_1);Max Likelihood csv.csv")
my_data2<-read.csv("{'(1,-2)(2,-1)'_ 0.5, '(1,-1)'_ 0.5}{'(1,-2)(2,-1)'_ 0.5, '(1,-1)'_ 0.5}(A_1,B_1);Max Likelihood csv.csv")
my_data3<-read.csv("{'(1,-2)(2,-1)'_ 0.5, '(1,-1)'_ 0.5}{'(1,-2)(2,-1)'_ 1.0}(A_1,B_1);Max Likelihood csv.csv")
my_data4<-read.csv("{'(1,-2)(2,-1)'_ 0.5, '(1,-1)'_ 0.5}{'(1,2)(-2,-1)'_ 0.25, '(1,2,-1,-2)'_ 0.25, '(1,-2,-1,2)'_ 0.25, '(1,-1)(2,-2)'_ 0.25}(A_1,B_1);Max Likelihood csv.csv")
my_data5<-read.csv("{'(1,-2)(2,-1)'_ 0.5, '(1,-1)'_ 0.5}{'(1,2)(-2,-1)'_ 1.0}(A_1,B_1);Max Likelihood csv.csv")
my_data6<-read.csv("{'(1,-2)(2,-1)'_ 0.5, '(1,-1)'_ 0.5}{'(1,3)(-3,-1)'_ 1.0}(A_1,B_1);Max Likelihood csv.csv")
my_data7<-read.csv("{'(1,-2)(2,-1)'_ 0.5, '(1,-1)'_ 0.5}{'(1,4)(-4,-1)'_ 1.0}(A_1,B_1);Max Likelihood csv.csv")


colnames(my_data) <- c("C1","C2","C3","C4")
colnames(my_data2) <- c("C1","C2","C3","C4")
colnames(my_data3) <- c("C1","C2","C3","C4")
colnames(my_data4) <- c("C1","C2","C3","C4")
colnames(my_data5) <- c("C1","C2","C3","C4")
colnames(my_data6) <- c("C1","C2","C3","C4")
colnames(my_data7) <- c("C1","C2","C3","C4")

summary(my_data[3])
summary(my_data2[3])
summary(my_data3[3])
summary(my_data4[3])
summary(my_data5[3])
summary(my_data6[3])
summary(my_data7[3])



ggplot()+geom_freqpoly(my_data7, mapping =aes(C3), binwidth=1, colour="pink", alpha=0.5, size=1)+
  geom_freqpoly(my_data, mapping =aes(C3), colour="yellow", binwidth=1, alpha=0.5, size=1) +
  geom_freqpoly(my_data3, mapping =aes(C3), colour="orange", binwidth=1, alpha=0.5, size=1)+
  geom_freqpoly(my_data4, mapping =aes(C3), binwidth=1, colour="blue", alpha=0.5, size=1)+
  geom_freqpoly(my_data5, mapping =aes(C3), binwidth=1, colour="green", alpha=0.5, size=1)+
  geom_freqpoly(my_data6, mapping =aes(C3), binwidth=1, colour="purple", alpha=0.5, size=1)+
  geom_freqpoly(my_data2, mapping =aes(C3), binwidth=1, size=1)+
  theme_minimal() +
  labs(title="Errors in Time Estimates of All Inversions Under Different Comparing Models
   ", x="(maximum likelihood time estimate−real time)")
  

#finding most frequent value
res = hist(unlist(my_data[3]), breaks=1020)
res$mids[which.max(res$counts)]
res = hist(unlist(my_data2[3]), breaks=1020)
res$mids[which.max(res$counts)]
res = hist(unlist(my_data3[3]), breaks=1020)
res$mids[which.max(res$counts)]
res = hist(unlist(my_data4[3]), breaks=1020)
res$mids[which.max(res$counts)]
res = hist(unlist(my_data5[3]), breaks=1020)
res$mids[which.max(res$counts)]
res = hist(unlist(my_data6[3]), breaks=1020)
res$mids[which.max(res$counts)]
res = hist(unlist(my_data7[3]), breaks=1020)
res$mids[which.max(res$counts)]

median(unlist(my_data[3]))
median(unlist(my_data2[3]))
median(unlist(my_data3[3]))
median(unlist(my_data4[3]))
median(unlist(my_data5[3]))
median(unlist(my_data6[3]))
median(unlist(my_data7[3]))

median(unlist(my_data[3]), na.rm=TRUE)
median(unlist(my_data2[3]), na.rm=TRUE)
median(unlist(my_data3[3]), na.rm=TRUE)
median(unlist(my_data4[3]), na.rm=TRUE)
median(unlist(my_data5[3]), na.rm=TRUE)
median(unlist(my_data6[3]), na.rm=TRUE)
median(unlist(my_data7[3]), na.rm=TRUE)

sum(is.na(my_data[3]))
sum(is.na(my_data2[3]))
sum(is.na(my_data3[3]))
sum(is.na(my_data4[3]))
sum(is.na(my_data5[3]))
sum(is.na(my_data6[3]))
sum(is.na(my_data7[3]))

# one gap swaps
my_data<-read.csv("{'(1,3)(-3,-1)'_ 1.0}{'(1,-1)'_ 1.0}(A_1,B_1);Max Likelihood csv.csv")
my_data2<-read.csv("{'(1,3)(-3,-1)'_ 1.0}{'(1,-2)(2,-1)'_ 0.5, '(1,-1)'_ 0.5}(A_1,B_1);Max Likelihood csv.csv")
my_data3<-read.csv("{'(1,3)(-3,-1)'_ 1.0}{'(1,-2)(2,-1)'_ 1.0}(A_1,B_1);Max Likelihood csv.csv")
my_data4<-read.csv("{'(1,3)(-3,-1)'_ 1.0}{'(1,2)(-2,-1)'_ 0.25, '(1,2,-1,-2)'_ 0.25, '(1,-2,-1,2)'_ 0.25, '(1,-1)(2,-2)'_ 0.25}(A_1,B_1);Max Likelihood csv.csv")
my_data5<-read.csv("{'(1,3)(-3,-1)'_ 1.0}{'(1,2)(-2,-1)'_ 1.0}(A_1,B_1);Max Likelihood csv.csv")
my_data6<-read.csv("{'(1,3)(-3,-1)'_ 1.0}{'(1,3)(-3,-1)'_ 1.0}(A_1,B_1);Max Likelihood csv.csv")
my_data7<-read.csv("{'(1,3)(-3,-1)'_ 1.0}{'(1,4)(-4,-1)'_ 1.0}(A_1,B_1);Max Likelihood csv.csv")


colnames(my_data) <- c("C1","C2","C3","C4")
colnames(my_data2) <- c("C1","C2","C3","C4")
colnames(my_data3) <- c("C1","C2","C3","C4")
colnames(my_data4) <- c("C1","C2","C3","C4")
colnames(my_data5) <- c("C1","C2","C3","C4")
colnames(my_data6) <- c("C1","C2","C3","C4")
colnames(my_data7) <- c("C1","C2","C3","C4")
summary(my_data[3])
summary(my_data2[3])
summary(my_data3[3])
summary(my_data4[3])
summary(my_data5[3])
summary(my_data6[3])
summary(my_data7[3])


ggplot()+geom_freqpoly(my_data7, mapping =aes(C3), binwidth=1, colour="pink", alpha=0.5, size=1)+
  geom_freqpoly(my_data, mapping =aes(C3), colour="yellow", binwidth=1, alpha=0.5, size=1) +
  geom_freqpoly(my_data3, mapping =aes(C3), colour="red", binwidth=1, alpha=0.5, size=1)+
  geom_freqpoly(my_data4, mapping =aes(C3), binwidth=1, colour="blue", alpha=0.5, size=1)+
  geom_freqpoly(my_data5, mapping =aes(C3), binwidth=1, colour="green", alpha=0.5, size=1)+
  geom_freqpoly(my_data2, mapping =aes(C3), binwidth=1, colour="orange", alpha=0.5, size=1)+
  geom_freqpoly(my_data6, mapping =aes(C3), binwidth=1, size=1)+
  theme_minimal() +
  labs(title="Errors in Time Estimates of One-Gap Swaps Under Different Comparing Models
   ", x="(maximum likelihood time estimate−real time)")

#finding most frequent value
res = hist(unlist(my_data[3]), breaks=1020)
res$mids[which.max(res$counts)]
res = hist(unlist(my_data2[3]), breaks=1020)
res$mids[which.max(res$counts)]
res = hist(unlist(my_data3[3]), breaks=1020)
res$mids[which.max(res$counts)]
res = hist(unlist(my_data4[3]), breaks=1020)
res$mids[which.max(res$counts)]
res = hist(unlist(my_data5[3]), breaks=1020)
res$mids[which.max(res$counts)]
res = hist(unlist(my_data6[3]), breaks=1020)
res$mids[which.max(res$counts)]
res = hist(unlist(my_data7[3]), breaks=1020)
res$mids[which.max(res$counts)]

median(unlist(my_data[3]))
median(unlist(my_data2[3]))
median(unlist(my_data3[3]))
median(unlist(my_data4[3]))
median(unlist(my_data5[3]))
median(unlist(my_data6[3]))
median(unlist(my_data7[3]))

median(unlist(my_data[3]), na.rm=TRUE)
median(unlist(my_data2[3]), na.rm=TRUE)
median(unlist(my_data3[3]), na.rm=TRUE)
median(unlist(my_data4[3]), na.rm=TRUE)
median(unlist(my_data5[3]), na.rm=TRUE)
median(unlist(my_data6[3]), na.rm=TRUE)
median(unlist(my_data7[3]), na.rm=TRUE)

sum(is.na(my_data[3]))
sum(is.na(my_data2[3]))
sum(is.na(my_data3[3]))
sum(is.na(my_data4[3]))
sum(is.na(my_data5[3]))
sum(is.na(my_data6[3]))
sum(is.na(my_data7[3]))

#Two Gap Swaps
my_data<-read.csv("{'(1,4)(-4,-1)'_ 1.0}{'(1,-1)'_ 1.0}(A_1,B_1);Max Likelihood csv.csv")
my_data2<-read.csv("{'(1,4)(-4,-1)'_ 1.0}{'(1,-2)(2,-1)'_ 0.5, '(1,-1)'_ 0.5}(A_1,B_1);Max Likelihood csv.csv")
my_data3<-read.csv("{'(1,4)(-4,-1)'_ 1.0}{'(1,-2)(2,-1)'_ 1.0}(A_1,B_1);Max Likelihood csv.csv")
my_data4<-read.csv("{'(1,4)(-4,-1)'_ 1.0}{'(1,2)(-2,-1)'_ 0.25, '(1,2,-1,-2)'_ 0.25, '(1,-2,-1,2)'_ 0.25, '(1,-1)(2,-2)'_ 0.25}(A_1,B_1);Max Likelihood csv.csv")
my_data5<-read.csv("{'(1,4)(-4,-1)'_ 1.0}{'(1,2)(-2,-1)'_ 1.0}(A_1,B_1);Max Likelihood csv.csv")
my_data6<-read.csv("{'(1,4)(-4,-1)'_ 1.0}{'(1,3)(-3,-1)'_ 1.0}(A_1,B_1);Max Likelihood csv.csv")
my_data7<-read.csv("{'(1,4)(-4,-1)'_ 1.0}{'(1,4)(-4,-1)'_ 1.0}(A_1,B_1);Max Likelihood csv.csv")

colnames(my_data) <- c("C1","C2","C3","C4")
colnames(my_data2) <- c("C1","C2","C3","C4")
colnames(my_data3) <- c("C1","C2","C3","C4")
colnames(my_data4) <- c("C1","C2","C3","C4")
colnames(my_data5) <- c("C1","C2","C3","C4")
colnames(my_data6) <- c("C1","C2","C3","C4")
colnames(my_data7) <- c("C1","C2","C3","C4")

summary(my_data[3])
summary(my_data2[3])
summary(my_data3[3])
summary(my_data4[3])
summary(my_data5[3])
summary(my_data6[3])
summary(my_data7[3])

ggplot()+geom_freqpoly(my_data2, mapping =aes(C3), binwidth=1, colour="red", alpha=0.5, size=1)+
  geom_freqpoly(my_data, mapping =aes(C3), colour="yellow", binwidth=1, alpha=0.5, size=1) +
  geom_freqpoly(my_data3, mapping =aes(C3), colour="orange", binwidth=1, alpha=0.5, size=1)+
  geom_freqpoly(my_data4, mapping =aes(C3), binwidth=1, colour="blue", alpha=0.5, size=1)+
  geom_freqpoly(my_data5, mapping =aes(C3), binwidth=1, colour="green", alpha=0.5, size=1)+
  geom_freqpoly(my_data6, mapping =aes(C3), binwidth=1, colour="purple", alpha=0.5, size=1)+
  geom_freqpoly(my_data7, mapping =aes(C3), binwidth=1, size=1)+
  theme_minimal() +
  labs(title="Errors in Time Estimates of Two-Gap Swaps Under Different Comparing Models
   ", x="(maximum likelihood time estimate−real time)")


#finding most frequent value
res = hist(unlist(my_data[3]), breaks=1020)
res$mids[which.max(res$counts)]
res = hist(unlist(my_data2[3]), breaks=1020)
res$mids[which.max(res$counts)]
res = hist(unlist(my_data3[3]), breaks=1020)
res$mids[which.max(res$counts)]
res = hist(unlist(my_data4[3]), breaks=1020)
res$mids[which.max(res$counts)]
res = hist(unlist(my_data5[3]), breaks=1020)
res$mids[which.max(res$counts)]
res = hist(unlist(my_data6[3]), breaks=1020)
res$mids[which.max(res$counts)]
res = hist(unlist(my_data7[3]), breaks=1020)
res$mids[which.max(res$counts)]

median(unlist(my_data[3]))
median(unlist(my_data2[3]))
median(unlist(my_data3[3]))
median(unlist(my_data4[3]))
median(unlist(my_data5[3]))
median(unlist(my_data6[3]))
median(unlist(my_data7[3]))

median(unlist(my_data[3]), na.rm=TRUE)
median(unlist(my_data2[3]), na.rm=TRUE)
median(unlist(my_data3[3]), na.rm=TRUE)
median(unlist(my_data4[3]), na.rm=TRUE)
median(unlist(my_data5[3]), na.rm=TRUE)
median(unlist(my_data6[3]), na.rm=TRUE)
median(unlist(my_data7[3]), na.rm=TRUE)

sum(is.na(my_data[3]))
sum(is.na(my_data2[3]))
sum(is.na(my_data3[3]))
sum(is.na(my_data4[3]))
sum(is.na(my_data5[3]))
sum(is.na(my_data6[3]))
sum(is.na(my_data7[3]))

#one region inversions
my_data<-read.csv("{'(1,-1)'_ 1.0}{'(1,-1)'_ 1.0}(A_1,B_1);Max Likelihood csv.csv")
my_data2<-read.csv("{'(1,-1)'_ 1.0}{'(1,-2)(2,-1)'_ 0.5, '(1,-1)'_ 0.5}(A_1,B_1);Max Likelihood csv.csv")
my_data3<-read.csv("{'(1,-1)'_ 1.0}{'(1,-2)(2,-1)'_ 1.0}(A_1,B_1);Max Likelihood csv.csv")
my_data4<-read.csv("{'(1,-1)'_ 1.0}{'(1,2)(-2,-1)'_ 0.25, '(1,2,-1,-2)'_ 0.25, '(1,-2,-1,2)'_ 0.25, '(1,-1)(2,-2)'_ 0.25}(A_1,B_1);Max Likelihood csv.csv")
my_data5<-read.csv("{'(1,-1)'_ 1.0}{'(1,2)(-2,-1)'_ 1.0}(A_1,B_1);Max Likelihood csv.csv")
my_data6<-read.csv("{'(1,-1)'_ 1.0}{'(1,3)(-3,-1)'_ 1.0}(A_1,B_1);Max Likelihood csv.csv")
my_data7<-read.csv("{'(1,-1)'_ 1.0}{'(1,4)(-4,-1)'_ 1.0}(A_1,B_1);Max Likelihood csv.csv")

colnames(my_data) <- c("C1","C2","C3","C4")
colnames(my_data2) <- c("C1","C2","C3","C4")
colnames(my_data3) <- c("C1","C2","C3","C4")
colnames(my_data4) <- c("C1","C2","C3","C4")
colnames(my_data5) <- c("C1","C2","C3","C4")
colnames(my_data6) <- c("C1","C2","C3","C4")
colnames(my_data7) <- c("C1","C2","C3","C4")

summary(my_data[3])
summary(my_data2[3])
summary(my_data3[3])
summary(my_data4[3])
summary(my_data5[3])
summary(my_data6[3])
summary(my_data7[3])


ggplot()+geom_freqpoly(my_data7, mapping =aes(C3), binwidth=1, colour="pink", alpha=0.5, size=1)+
  geom_freqpoly(my_data2, mapping =aes(C3), colour="red", binwidth=1, alpha=0.5, size=1) +
  geom_freqpoly(my_data3, mapping =aes(C3), colour="orange", binwidth=1, alpha=0.5, size=1)+
  geom_freqpoly(my_data4, mapping =aes(C3), binwidth=1, colour="blue", alpha=0.5, size=1)+
  geom_freqpoly(my_data5, mapping =aes(C3), binwidth=1, colour="green", alpha=0.5, size=1)+
  geom_freqpoly(my_data6, mapping =aes(C3), binwidth=1, colour="purple", alpha=0.5, size=1)+
  geom_freqpoly(my_data, mapping =aes(C3), binwidth=1, size=1)+
  theme_minimal() +
  labs(title="Errors in Time Estimates of One-Region Inversions Under Different Comparing Models
  ", x="(maximum likelihood time estimate−real time)")

#finding most frequent value
res = hist(unlist(my_data[3]), breaks=1020)
res$mids[which.max(res$counts)]
res = hist(unlist(my_data2[3]), breaks=1020)
res$mids[which.max(res$counts)]
res = hist(unlist(my_data3[3]), breaks=1020)
res$mids[which.max(res$counts)]
res = hist(unlist(my_data4[3]), breaks=1020)
res$mids[which.max(res$counts)]
res = hist(unlist(my_data5[3]), breaks=1020)
res$mids[which.max(res$counts)]
res = hist(unlist(my_data6[3]), breaks=1020)
res$mids[which.max(res$counts)]
res = hist(unlist(my_data7[3]), breaks=1020)
res$mids[which.max(res$counts)]

median(unlist(my_data[3]))
median(unlist(my_data2[3]))
median(unlist(my_data3[3]))
median(unlist(my_data4[3]))
median(unlist(my_data5[3]))
median(unlist(my_data6[3]))
median(unlist(my_data7[3]))

median(unlist(my_data[3]), na.rm=TRUE)
median(unlist(my_data2[3]), na.rm=TRUE)
median(unlist(my_data3[3]), na.rm=TRUE)
median(unlist(my_data4[3]), na.rm=TRUE)
median(unlist(my_data5[3]), na.rm=TRUE)
median(unlist(my_data6[3]), na.rm=TRUE)
median(unlist(my_data7[3]), na.rm=TRUE)

sum(is.na(my_data[3]))
sum(is.na(my_data2[3]))
sum(is.na(my_data3[3]))
sum(is.na(my_data4[3]))
sum(is.na(my_data5[3]))
sum(is.na(my_data6[3]))
sum(is.na(my_data7[3]))

#two region inversions

my_data<-read.csv("{'(1,-2)(2,-1)'_ 1.0}{'(1,-1)'_ 1.0}(A_1,B_1);Max Likelihood csv.csv")
my_data2<-read.csv("{'(1,-2)(2,-1)'_ 1.0}{'(1,-2)(2,-1)'_ 0.5, '(1,-1)'_ 0.5}(A_1,B_1);Max Likelihood csv.csv")
my_data3<-read.csv("{'(1,-2)(2,-1)'_ 1.0}{'(1,-2)(2,-1)'_ 1.0}(A_1,B_1);Max Likelihood csv.csv")
my_data4<-read.csv("{'(1,-2)(2,-1)'_ 1.0}{'(1,2)(-2,-1)'_ 0.25, '(1,2,-1,-2)'_ 0.25, '(1,-2,-1,2)'_ 0.25, '(1,-1)(2,-2)'_ 0.25}(A_1,B_1);Max Likelihood csv.csv")
my_data5<-read.csv("{'(1,-2)(2,-1)'_ 1.0}{'(1,2)(-2,-1)'_ 1.0}(A_1,B_1);Max Likelihood csv.csv")
my_data6<-read.csv("{'(1,-2)(2,-1)'_ 1.0}{'(1,3)(-3,-1)'_ 1.0}(A_1,B_1);Max Likelihood csv.csv")
my_data7<-read.csv("{'(1,-2)(2,-1)'_ 1.0}{'(1,4)(-4,-1)'_ 1.0}(A_1,B_1);Max Likelihood csv.csv")


colnames(my_data) <- c("C1","C2","C3","C4")
colnames(my_data2) <- c("C1","C2","C3","C4")
colnames(my_data3) <- c("C1","C2","C3","C4")
colnames(my_data4) <- c("C1","C2","C3","C4")
colnames(my_data5) <- c("C1","C2","C3","C4")
colnames(my_data6) <- c("C1","C2","C3","C4")
colnames(my_data7) <- c("C1","C2","C3","C4")

summary(my_data[3])
summary(my_data2[3])
summary(my_data3[3])
summary(my_data4[3])
summary(my_data5[3])
summary(my_data6[3])
summary(my_data7[3])


ggplot()+geom_freqpoly(my_data7, mapping =aes(C3), binwidth=1, colour="pink", alpha=0.5, size=1)+
  geom_freqpoly(my_data2, mapping =aes(C3), colour="red", binwidth=1, alpha=0.5, size=1) +
  geom_freqpoly(my_data, mapping =aes(C3), colour="yellow", binwidth=1, alpha=0.5, size=1)+
  geom_freqpoly(my_data4, mapping =aes(C3), binwidth=1, colour="blue", alpha=0.5, size=1)+
  geom_freqpoly(my_data5, mapping =aes(C3), binwidth=1, colour="green", alpha=0.5, size=1)+
  geom_freqpoly(my_data6, mapping =aes(C3), binwidth=1, colour="purple", alpha=0.5, size=1)+
  geom_freqpoly(my_data3, mapping =aes(C3), binwidth=1, size=1)+
  theme_minimal() +
  labs(title="Errors in Time Estimates of Two-Region Inversions Under Different Comparing Models
   ", x="(maximum likelihood time estimate−real time)")

#finding most frequent value
res = hist(unlist(my_data[3]), breaks=1020)
res$mids[which.max(res$counts)]
res = hist(unlist(my_data2[3]), breaks=1020)
res$mids[which.max(res$counts)]
res = hist(unlist(my_data3[3]), breaks=1020)
res$mids[which.max(res$counts)]
res = hist(unlist(my_data4[3]), breaks=1020)
res$mids[which.max(res$counts)]
res = hist(unlist(my_data5[3]), breaks=1020)
res$mids[which.max(res$counts)]
res = hist(unlist(my_data6[3]), breaks=1020)
res$mids[which.max(res$counts)]
res = hist(unlist(my_data7[3]), breaks=1020)
res$mids[which.max(res$counts)]

median(unlist(my_data[3]))
median(unlist(my_data2[3]))
median(unlist(my_data3[3]))
median(unlist(my_data4[3]))
median(unlist(my_data5[3]))
median(unlist(my_data6[3]))
median(unlist(my_data7[3]))

median(unlist(my_data[3]), na.rm=TRUE)
median(unlist(my_data2[3]), na.rm=TRUE)
median(unlist(my_data3[3]), na.rm=TRUE)
median(unlist(my_data4[3]), na.rm=TRUE)
median(unlist(my_data5[3]), na.rm=TRUE)
median(unlist(my_data6[3]), na.rm=TRUE)
median(unlist(my_data7[3]), na.rm=TRUE)

sum(is.na(my_data[3]))
sum(is.na(my_data2[3]))
sum(is.na(my_data3[3]))
sum(is.na(my_data4[3]))
sum(is.na(my_data5[3]))
sum(is.na(my_data6[3]))
sum(is.na(my_data7[3]))

#two reg adj trans

my_data<-read.csv("{'(1,2)(-2,-1)'_ 0.25, '(1,2,-1,-2)'_ 0.25, '(1,-2,-1,2)'_ 0.25, '(1,-1)(2,-2)'_ 0.25}{'(1,-1)'_ 1.0}(A_1,B_1);Max Likelihood csv.csv")
my_data2<-read.csv("{'(1,2)(-2,-1)'_ 0.25, '(1,2,-1,-2)'_ 0.25, '(1,-2,-1,2)'_ 0.25, '(1,-1)(2,-2)'_ 0.25}{'(1,-2)(2,-1)'_ 0.5, '(1,-1)'_ 0.5}(A_1,B_1);Max Likelihood csv.csv")
my_data3<-read.csv("{'(1,2)(-2,-1)'_ 0.25, '(1,2,-1,-2)'_ 0.25, '(1,-2,-1,2)'_ 0.25, '(1,-1)(2,-2)'_ 0.25}{'(1,-2)(2,-1)'_ 1.0}(A_1,B_1);Max Likelihood csv.csv")
my_data4<-read.csv("{'(1,2)(-2,-1)'_ 0.25, '(1,2,-1,-2)'_ 0.25, '(1,-2,-1,2)'_ 0.25, '(1,-1)(2,-2)'_ 0.25}{'(1,2)(-2,-1)'_ 0.25, '(1,2,-1,-2)'_ 0.25, '(1,-2,-1,2)'_ 0.25, '(1,-1)(2,-2)'_ 0.25}(A_1,B_1);Max Likelihood csv.csv")
my_data5<-read.csv("{'(1,2)(-2,-1)'_ 0.25, '(1,2,-1,-2)'_ 0.25, '(1,-2,-1,2)'_ 0.25, '(1,-1)(2,-2)'_ 0.25}{'(1,2)(-2,-1)'_ 1.0}(A_1,B_1);Max Likelihood csv.csv")
my_data6<-read.csv("{'(1,2)(-2,-1)'_ 0.25, '(1,2,-1,-2)'_ 0.25, '(1,-2,-1,2)'_ 0.25, '(1,-1)(2,-2)'_ 0.25}{'(1,3)(-3,-1)'_ 1.0}(A_1,B_1);Max Likelihood csv.csv")
my_data7<-read.csv("{'(1,2)(-2,-1)'_ 0.25, '(1,2,-1,-2)'_ 0.25, '(1,-2,-1,2)'_ 0.25, '(1,-1)(2,-2)'_ 0.25}{'(1,4)(-4,-1)'_ 1.0}(A_1,B_1);Max Likelihood csv.csv")

colnames(my_data) <- c("C1","C2","C3","C4")
colnames(my_data2) <- c("C1","C2","C3","C4")
colnames(my_data3) <- c("C1","C2","C3","C4")
colnames(my_data4) <- c("C1","C2","C3","C4")
colnames(my_data5) <- c("C1","C2","C3","C4")
colnames(my_data6) <- c("C1","C2","C3","C4")
colnames(my_data7) <- c("C1","C2","C3","C4")

summary(my_data[3])
summary(my_data2[3])
summary(my_data3[3])
summary(my_data4[3])
summary(my_data5[3])
summary(my_data6[3])
summary(my_data7[3])


ggplot()+geom_freqpoly(my_data7, mapping =aes(C3), binwidth=1, colour="pink", alpha=0.5, size=1)+
  geom_freqpoly(my_data, mapping =aes(C3), colour="yellow", binwidth=1, alpha=0.5, size=1) +
  geom_freqpoly(my_data3, mapping =aes(C3), colour="orange", binwidth=1, alpha=0.5, size=1)+
  geom_freqpoly(my_data6, mapping =aes(C3), binwidth=1, colour="purple", alpha=0.5, size=1)+
  geom_freqpoly(my_data5, mapping =aes(C3), binwidth=1, colour="green", alpha=0.5, size=1)+
  geom_freqpoly(my_data2, mapping =aes(C3), binwidth=1, colour="red", alpha=0.5, size=1)+
  geom_freqpoly(my_data4, mapping =aes(C3), binwidth=1, size=1)+
  theme_minimal() +
  labs(title="Errors in Time Estimates of Two-Region Adjacent Transpositions Under Different 
                                                  Comparing Models", x="(maximum likelihood time estimate−real time)")



#finding most frequent value
res = hist(unlist(my_data[3]), breaks=1020)
res$mids[which.max(res$counts)]
res = hist(unlist(my_data2[3]), breaks=1020)
res$mids[which.max(res$counts)]
res = hist(unlist(my_data3[3]), breaks=102)
res$mids[which.max(res$counts)]
res = hist(unlist(my_data4[3]), breaks=1020)
res$mids[which.max(res$counts)]
res = hist(unlist(my_data5[3]), breaks=1020)
res$mids[which.max(res$counts)]
res = hist(unlist(my_data6[3]), breaks=1020)
res$mids[which.max(res$counts)]
res = hist(unlist(my_data7[3]), breaks=1020)
res$mids[which.max(res$counts)]

median(unlist(my_data[3]))
median(unlist(my_data2[3]))
median(unlist(my_data3[3]))
median(unlist(my_data4[3]))
median(unlist(my_data5[3]))
median(unlist(my_data6[3]))
median(unlist(my_data7[3]))

median(unlist(my_data[3]), na.rm=TRUE)
median(unlist(my_data2[3]), na.rm=TRUE)
median(unlist(my_data3[3]), na.rm=TRUE)
median(unlist(my_data4[3]), na.rm=TRUE)
median(unlist(my_data5[3]), na.rm=TRUE)
median(unlist(my_data6[3]), na.rm=TRUE)
median(unlist(my_data7[3]), na.rm=TRUE)

sum(is.na(my_data[3]))
sum(is.na(my_data2[3]))
sum(is.na(my_data3[3]))
sum(is.na(my_data4[3]))
sum(is.na(my_data5[3]))
sum(is.na(my_data6[3]))
sum(is.na(my_data7[3]))


#Plotting an example where the most frequent value and the median differ

ggplot()+geom_histogram(my_data3, mapping =aes(C3), fill="darkgrey", binwidth=0.5) +
  theme_minimal() + geom_vline(aes(xintercept = median(unlist(my_data3[3]), na.rm=TRUE)), colour="red") +
  labs(title="Errors in Time Estimates of Genomes Evolved under Two-Region Adjacent 
           Transpositions and Compared under Two-Region Inversions
                                ", x="(maximum likelihood time estimate−real time)")
