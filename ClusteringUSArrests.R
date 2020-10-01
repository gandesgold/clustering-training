#load the data
data("USArrests")
head(USArrests)

#Matrix Correlation
pairs(USArrests)

#Correlation Visualization II
library(corrplot)

#data scaling
USArrScale <- scale(USArrests, scale=T)

#K-means with k=3
set.seed(123)
kMres <- kmeans(USArrScale, centers=3)

#result
kMres $cluster

#plot the Clusters
pairs(USArrScale, col=c(1:3)[kMres $cluster], pch=16)