# Genome Size = 3
my_data<-read.csv("{'(1,-1)'_ 1}{'(1,-1)'_ 1}(A_1,B_1);Max Likelihood csv3.csv")
my_data2<-read.csv("{'(1,-2)(2,-1)'_ 1}{'(1,-2)(2,-1)'_ 1}(A_1,B_1);Max Likelihood csv3.csv")
my_data3<-read.csv("{'(1,2)(-2,-1)'_ 1}{'(1,2)(-2,-1)'_ 1}(A_1,B_1);Max Likelihood csv3.csv")
my_data4<-read.csv("{'(1,2)(-2,-1)'_ 0.25, '(1,2,-1,-2)'_ 0.25, '(1,-2,-1,2)'_ 0.25, '(1,-1)(2,-2)'_ 0.25}{'(1,2)(-2,-1)'_ 0.25, '(1,2,-1,-2)'_ 0.25, '(1,-2,-1,2)'_ 0.25, '(1,-1)(2,-2)'_ 0.25}(A_1,B_1);Max Likelihood csv3.csv")
my_data5<-read.csv("{'(1,3)(-3,-1)'_ 1.0}{'(1,3)(-3,-1)'_ 1.0}(A_1,B_1);Max Likelihood csv.csv")
my_data6<-read.csv("{'(1,4)(-4,-1)'_ 1.0}{'(1,4)(-4,-1)'_ 1.0}(A_1,B_1);Max Likelihood csv.csv")
my_data7<-read.csv("{'(1,-2)(2,-1)'_ 0.5, '(1,-1)'_ 0.5}{'(1,-2)(2,-1)'_ 0.5, '(1,-1)'_ 0.5}(A_1,B_1);Max Likelihood csv.csv")


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

# Genome Size = 4
my_data<-read.csv("{'(1,-1)'_ 1.0}{'(1,-1)'_ 1.0}(A_1,B_1);Max Likelihood csv4.csv")
my_data2<-read.csv("{'(1,-2)(2,-1)'_ 1.0}{'(1,-2)(2,-1)'_ 1.0}(A_1,B_1);Max Likelihood csv4.csv")
my_data3<-read.csv("{'(1,2)(-2,-1)'_ 1.0}{'(1,2)(-2,-1)'_ 1.0}(A_1,B_1);Max Likelihood csv4.csv")
my_data4<-read.csv("{'(1,2)(-2,-1)'_ 0.25, '(1,2,-1,-2)'_ 0.25, '(1,-2,-1,2)'_ 0.25, '(1,-1)(2,-2)'_ 0.25}{'(1,2)(-2,-1)'_ 0.25, '(1,2,-1,-2)'_ 0.25, '(1,-2,-1,2)'_ 0.25, '(1,-1)(2,-2)'_ 0.25}(A_1,B_1);Max Likelihood csv4.csv")
my_data5<-read.csv("{'(1,3)(-3,-1)'_ 1.0}{'(1,3)(-3,-1)'_ 1.0}(A_1,B_1);Max Likelihood csv4.csv")
my_data6<-read.csv("{'(1,4)(-4,-1)'_ 1.0}{'(1,4)(-4,-1)'_ 1.0}(A_1,B_1);Max Likelihood csv4.csv")
my_data7<-read.csv("{'(1,-2)(2,-1)'_ 0.5, '(1,-1)'_ 0.5}{'(1,-2)(2,-1)'_ 0.5, '(1,-1)'_ 0.5}(A_1,B_1);Max Likelihood csv4.csv")


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


# Genome Size = 5
my_data<-read.csv("{'(1,-1)'_ 1.0}{'(1,-1)'_ 1.0}(A_1,B_1);Max Likelihood csv5.csv")
my_data2<-read.csv("{'(1,-2)(2,-1)'_ 1.0}{'(1,-2)(2,-1)'_ 1.0}(A_1,B_1);Max Likelihood csv5.csv")
my_data3<-read.csv("{'(1,2)(-2,-1)'_ 1.0}{'(1,2)(-2,-1)'_ 1.0}(A_1,B_1);Max Likelihood csv5.csv")
my_data4<-read.csv("{'(1,2)(-2,-1)'_ 0.25, '(1,2,-1,-2)'_ 0.25, '(1,-2,-1,2)'_ 0.25, '(1,-1)(2,-2)'_ 0.25}{'(1,2)(-2,-1)'_ 0.25, '(1,2,-1,-2)'_ 0.25, '(1,-2,-1,2)'_ 0.25, '(1,-1)(2,-2)'_ 0.25}(A_1,B_1);Max Likelihood csv5.csv")
my_data5<-read.csv("{'(1,3)(-3,-1)'_ 1.0}{'(1,3)(-3,-1)'_ 1.0}(A_1,B_1);Max Likelihood csv5.csv")
my_data6<-read.csv("{'(1,4)(-4,-1)'_ 1.0}{'(1,4)(-4,-1)'_ 1.0}(A_1,B_1);Max Likelihood csv5.csv")
my_data7<-read.csv("{'(1,-2)(2,-1)'_ 0.5, '(1,-1)'_ 0.5}{'(1,-2)(2,-1)'_ 0.5, '(1,-1)'_ 0.5}(A_1,B_1);Max Likelihood csv5.csv")


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

# Genome Size = 6
my_data<-read.csv("{'(1,-1)'_ 1.0}{'(1,-1)'_ 1.0}(A_1,B_1);Max Likelihood csv6.csv")
my_data2<-read.csv("{'(1,-2)(2,-1)'_ 1.0}{'(1,-2)(2,-1)'_ 1.0}(A_1,B_1);Max Likelihood csv6.csv")
my_data3<-read.csv("{'(1,2)(-2,-1)'_ 1.0}{'(1,2)(-2,-1)'_ 1.0}(A_1,B_1);Max Likelihood csv6.csv")
my_data4<-read.csv("{'(1,2)(-2,-1)'_ 0.25, '(1,2,-1,-2)'_ 0.25, '(1,-2,-1,2)'_ 0.25, '(1,-1)(2,-2)'_ 0.25}{'(1,2)(-2,-1)'_ 0.25, '(1,2,-1,-2)'_ 0.25, '(1,-2,-1,2)'_ 0.25, '(1,-1)(2,-2)'_ 0.25}(A_1,B_1);Max Likelihood csv6.csv")
my_data5<-read.csv("{'(1,3)(-3,-1)'_ 1.0}{'(1,3)(-3,-1)'_ 1.0}(A_1,B_1);Max Likelihood csv6.csv")
my_data6<-read.csv("{'(1,4)(-4,-1)'_ 1.0}{'(1,4)(-4,-1)'_ 1.0}(A_1,B_1);Max Likelihood csv6.csv")
my_data7<-read.csv("{'(1,-2)(2,-1)'_ 0.5, '(1,-1)'_ 0.5}{'(1,-2)(2,-1)'_ 0.5, '(1,-1)'_ 0.5}(A_1,B_1);Max Likelihood csv6.csv")


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

