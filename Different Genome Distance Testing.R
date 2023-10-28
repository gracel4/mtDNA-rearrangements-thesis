library(ggplot2)

#3
my1_data<-read.csv("{'(1,-1)'_ 1.0}{'(1,-1)'_ 1.0}(A_2,B_1);Max Likelihood csv7.csv")
my1_data2<-read.csv("{'(1,-2)(2,-1)'_ 1.0}{'(1,-2)(2,-1)'_ 1.0}(A_2,B_1);Max Likelihood csv7.csv")
my1_data3<-read.csv("{'(1,2)(-2,-1)'_ 1.0}{'(1,2)(-2,-1)'_ 1.0}(A_2,B_1);Max Likelihood csv7.csv")
my1_data4<-read.csv("{'(1,2)(-2,-1)'_ 0.25, '(1,2,-1,-2)'_ 0.25, '(1,-2,-1,2)'_ 0.25, '(1,-1)(2,-2)'_ 0.25}{'(1,2)(-2,-1)'_ 0.25, '(1,2,-1,-2)'_ 0.25, '(1,-2,-1,2)'_ 0.25, '(1,-1)(2,-2)'_ 0.25}(A_2,B_1);Max Likelihood csv7.csv")
my1_data5<-read.csv("{'(1,3)(-3,-1)'_ 1.0}{'(1,3)(-3,-1)'_ 1.0}(A_2,B_1);Max Likelihood csv7.csv")
my1_data6<-read.csv("{'(1,4)(-4,-1)'_ 1.0}{'(1,4)(-4,-1)'_ 1.0}(A_2,B_1);Max Likelihood csv7.csv")
my1_data7<-read.csv("{'(1,-2)(2,-1)'_ 0.5, '(1,-1)'_ 0.5}{'(1,-2)(2,-1)'_ 0.5, '(1,-1)'_ 0.5}(A_2,B_1);Max Likelihood csv7.csv")


median(unlist(my_data[3]))
median(unlist(my_data2[3]))
median(unlist(my_data3[3]))
median(unlist(my_data4[3]))
median(unlist(my_data5[3]))
#median(unlist(my_data6[3]))
median(unlist(my_data7[3]))

median(unlist(my_data[3]), na.rm=TRUE)
median(unlist(my_data2[3]), na.rm=TRUE)
median(unlist(my_data3[3]), na.rm=TRUE)
median(unlist(my_data4[3]), na.rm=TRUE)
median(unlist(my_data5[3]), na.rm=TRUE)
median(unlist(my_data6[3]), na.rm=TRUE)
median(unlist(my_data7[3]), na.rm=TRUE)



#4
my_data<-read.csv("{'(1,-1)'_ 1.0}{'(1,-1)'_ 1.0}(A_2,B_2);Max Likelihood csv7.csv")
my_data2<-read.csv("{'(1,-2)(2,-1)'_ 1.0}{'(1,-2)(2,-1)'_ 1.0}(A_2,B_2);Max Likelihood csv7.csv")
my_data3<-read.csv("{'(1,2)(-2,-1)'_ 1.0}{'(1,2)(-2,-1)'_ 1.0}(A_2,B_2);Max Likelihood csv7.csv")
my_data4<-read.csv("{'(1,2)(-2,-1)'_ 0.25, '(1,2,-1,-2)'_ 0.25, '(1,-2,-1,2)'_ 0.25, '(1,-1)(2,-2)'_ 0.25}{'(1,2)(-2,-1)'_ 0.25, '(1,2,-1,-2)'_ 0.25, '(1,-2,-1,2)'_ 0.25, '(1,-1)(2,-2)'_ 0.25}(A_2,B_2);Max Likelihood csv7.csv")
my_data5<-read.csv("{'(1,3)(-3,-1)'_ 1.0}{'(1,3)(-3,-1)'_ 1.0}(A_2,B_2);Max Likelihood csv7.csv")
my_data6<-read.csv("{'(1,4)(-4,-1)'_ 1.0}{'(1,4)(-4,-1)'_ 1.0}(A_2,B_2);Max Likelihood csv7.csv")
my_data7<-read.csv("{'(1,-2)(2,-1)'_ 0.5, '(1,-1)'_ 0.5}{'(1,-2)(2,-1)'_ 0.5, '(1,-1)'_ 0.5}(A_2,B_2);Max Likelihood csv7.csv")


median(unlist(my_data[3]))
median(unlist(my_data2[3]))
median(unlist(my_data3[3]))
median(unlist(my_data4[3]))
median(unlist(my_data5[3]))
#median(unlist(my_data6[3]))
median(unlist(my_data7[3]))

median(unlist(my_data[3]), na.rm=TRUE)
median(unlist(my_data2[3]), na.rm=TRUE)
median(unlist(my_data3[3]), na.rm=TRUE)
median(unlist(my_data4[3]), na.rm=TRUE)
median(unlist(my_data5[3]), na.rm=TRUE)
median(unlist(my_data6[3]), na.rm=TRUE)
median(unlist(my_data7[3]), na.rm=TRUE)


#6
my_data<-read.csv("{'(1,-1)'_ 1.0}{'(1,-1)'_ 1.0}(A_3,B_3);Max Likelihood csv7.csv")
my_data2<-read.csv("{'(1,-2)(2,-1)'_ 1.0}{'(1,-2)(2,-1)'_ 1.0}(A_3,B_3);Max Likelihood csv7.csv")
my_data3<-read.csv("{'(1,2)(-2,-1)'_ 1.0}{'(1,2)(-2,-1)'_ 1.0}(A_3,B_3);Max Likelihood csv7.csv")
my_data4<-read.csv("{'(1,2)(-2,-1)'_ 0.25, '(1,2,-1,-2)'_ 0.25, '(1,-2,-1,2)'_ 0.25, '(1,-1)(2,-2)'_ 0.25}{'(1,2)(-2,-1)'_ 0.25, '(1,2,-1,-2)'_ 0.25, '(1,-2,-1,2)'_ 0.25, '(1,-1)(2,-2)'_ 0.25}(A_3,B_3);Max Likelihood csv7.csv")
my_data5<-read.csv("{'(1,3)(-3,-1)'_ 1.0}{'(1,3)(-3,-1)'_ 1.0}(A_3,B_3);Max Likelihood csv7.csv")
my_data6<-read.csv("{'(1,4)(-4,-1)'_ 1.0}{'(1,4)(-4,-1)'_ 1.0}(A_3,B_3);Max Likelihood csv7.csv")
my_data7<-read.csv("{'(1,-2)(2,-1)'_ 0.5, '(1,-1)'_ 0.5}{'(1,-2)(2,-1)'_ 0.5, '(1,-1)'_ 0.5}(A_3,B_3);Max Likelihood csv7.csv")


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

#10
my_data<-read.csv("{'(1,-1)'_ 1.0}{'(1,-1)'_ 1.0}(A_5,B_5);Max Likelihood csv7.csv")
my_data2<-read.csv("{'(1,-2)(2,-1)'_ 1.0}{'(1,-2)(2,-1)'_ 1.0}(A_5,B_5);Max Likelihood csv7.csv")
my_data3<-read.csv("{'(1,2)(-2,-1)'_ 1.0}{'(1,2)(-2,-1)'_ 1.0}(A_5,B_5);Max Likelihood csv7.csv")
my_data4<-read.csv("{'(1,2)(-2,-1)'_ 0.25, '(1,2,-1,-2)'_ 0.25, '(1,-2,-1,2)'_ 0.25, '(1,-1)(2,-2)'_ 0.25}{'(1,2)(-2,-1)'_ 0.25, '(1,2,-1,-2)'_ 0.25, '(1,-2,-1,2)'_ 0.25, '(1,-1)(2,-2)'_ 0.25}(A_5,B_5);Max Likelihood csv7.csv")
my_data5<-read.csv("{'(1,3)(-3,-1)'_ 1.0}{'(1,3)(-3,-1)'_ 1.0}(A_5,B_5);Max Likelihood csv7.csv")
my_data6<-read.csv("{'(1,4)(-4,-1)'_ 1.0}{'(1,4)(-4,-1)'_ 1.0}(A_5,B_5);Max Likelihood csv7.csv")
my_data7<-read.csv("{'(1,-2)(2,-1)'_ 0.5, '(1,-1)'_ 0.5}{'(1,-2)(2,-1)'_ 0.5, '(1,-1)'_ 0.5}(A_5,B_5);Max Likelihood csv7.csv")


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



#16
my_data<-read.csv("{'(1,-1)'_ 1.0}{'(1,-1)'_ 1.0}(A_8,B_8);Max Likelihood csv7.csv")
my_data2<-read.csv("{'(1,-2)(2,-1)'_ 1.0}{'(1,-2)(2,-1)'_ 1.0}(A_8,B_8);Max Likelihood csv7.csv")
my_data3<-read.csv("{'(1,2)(-2,-1)'_ 1.0}{'(1,2)(-2,-1)'_ 1.0}(A_8,B_8);Max Likelihood csv7.csv")
my_data4<-read.csv("{'(1,2)(-2,-1)'_ 0.25, '(1,2,-1,-2)'_ 0.25, '(1,-2,-1,2)'_ 0.25, '(1,-1)(2,-2)'_ 0.25}{'(1,2)(-2,-1)'_ 0.25, '(1,2,-1,-2)'_ 0.25, '(1,-2,-1,2)'_ 0.25, '(1,-1)(2,-2)'_ 0.25}(A_8,B_8);Max Likelihood csv7.csv")
my_data5<-read.csv("{'(1,3)(-3,-1)'_ 1.0}{'(1,3)(-3,-1)'_ 1.0}(A_8,B_8);Max Likelihood csv7.csv")
my_data6<-read.csv("{'(1,4)(-4,-1)'_ 1.0}{'(1,4)(-4,-1)'_ 1.0}(A_8,B_8);Max Likelihood csv7.csv")
my_data7<-read.csv("{'(1,-2)(2,-1)'_ 0.5, '(1,-1)'_ 0.5}{'(1,-2)(2,-1)'_ 0.5, '(1,-1)'_ 0.5}(A_8,B_8);Max Likelihood csv7.csv")


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

#plotting

ggplot()+geom_freqpoly(my_data7, mapping =aes(C3), binwidth=1, colour="pink", alpha=0.5, size=1)+
  geom_freqpoly(my_data, mapping =aes(C3), colour="yellow", binwidth=1, alpha=0.5, size=1) +
  geom_freqpoly(my_data3, mapping =aes(C3), colour="orange", binwidth=1, alpha=0.5, size=1)+
  geom_freqpoly(my_data4, mapping =aes(C3), binwidth=1, colour="blue", alpha=0.5, size=1)+
  geom_freqpoly(my_data6, mapping =aes(C3), binwidth=1, colour="purple", alpha=0.5, size=1)+
  geom_freqpoly(my_data2, mapping =aes(C3), binwidth=1, colour="red", alpha=0.5, size=1)+
  geom_freqpoly(my_data5, mapping =aes(C3), binwidth=1, size=1)+
  theme_minimal() +
  labs(title="Differences in Maximum Likelihood Time Estimates of Adjacent
  Swaps Under Different Comparing Models", x="maximum likelihood time estimate-real time")
