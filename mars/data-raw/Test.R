library(readxl)
library(mars)

data1 <- read.csv("dataset/CASP.csv")
data2 <- read.csv2("dataset/qsar_fish_toxicity.csv", header = FALSE)
data3 <- read_excel("dataset/Concrete_Data.xls")


names(data1)[2:ncol(data1)] <- c("x1",paste0("x",2:(ncol(data1)-1)))
names(data1)[1] <- "y"
test1 <- mars(y~., data1[sample(nrow(data1), 100),], mars.control(Mmax=6))
print(test1)
summary(test1)
plot(test1)
anova(test1)
predict(test1,data1[sample(nrow(data1), 100),2:10])


names(data2) <- c("x1",paste0("x",2:(ncol(data2)-1)))
names(data2)[ncol(data2)] <- "y"
test2 <- mars(y~., data2[sample(nrow(data2), 100),], mars.control(Mmax=2))
print(test2)
summary(test2)
plot(test2)
anova(test2)
predict(test2,data2[sample(nrow(data2), 100),1:6])


names(data3) <- c("x1",paste0("x",2:(ncol(data3)-1)))
names(data3)[ncol(data3)] <- "y"
test3 <- mars(y~., data3[sample(nrow(data3), 100),], mars.control(Mmax=4))
print(test3)
summary(test3)
plot(test3)
anova(test3)
predict(test3,data3[sample(nrow(data3), 100),1:8])

