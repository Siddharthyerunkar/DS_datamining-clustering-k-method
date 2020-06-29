
library(factoextra)

uni.scaled<-scale(Universities[,-1]) #scaling the data

fviz_nbclust(uni.scaled,kmeans,method = "silhouette")+ 
  labs(subtitle = 'elbow method',tag = 'Clustering
groups') #determination of K value or number of cluster wcan be formed 

clust.k<-kmeans(uni.scaled,3) #kmeans gives cluster formation k value gives number of cluster
clust.k
clust.k$cluster
clust.k$centers
clust.k$size
clust.k$betweenss

clustfinal<-data.frame(Universities$Univ,clust.k$cluster) #final data frame


