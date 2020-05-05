#install.packages("data.table")
require("data.table")
boston=fread("/Users/ayhanertuglu/Desktop/Okul/II.Dönem/Business Analytics/Homework1/Q2/boston/boston.txt")
names(boston) = c("CRIM","ZN","INDUS","CHAS","NOX","RM","AGE","DIS","RAD","TAX","PTRATIO","B","LSTAT","MEDV")
boston
plot(boston,col=2,pch=".",cex=7)
plot
summary(boston)
cor(boston)
pca=princomp(boston,cor=T)
summary(pca,loadings=T)
barplot(pca$scores[,6])
