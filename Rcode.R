setwd("C:/deepak/study material/edwisor ,dataanlytics/ClassMaterial_2/Assignment")
getwd()
imdb_data=read.csv("IMDB_data.csv",header = T,stringsAsFactors = F)
imdb_data1=imdb_data[-2,]
genre=unique(imdb_data1$Genre)
length(unique(imdb_data1$Genre))
data=data.frame(unique(imdb_data1$Genre))
imdb_data1=imdb_data1[order(imdb_data1$Genre),]
imdb_data1$newvariable=with(imdb_data1,((as.numeric(imdb_data1$imdbVotes)-as.numeric(imdb_data1$imdbRating))^2))
imdb_data1$imdbVotescat[imdb_data1$imdbVotes>=0 & imdb_data1$imdbVotes<500]="LOW"
imdb_data1$imdbVotescat[imdb_data1$imdbVotes>=500 & imdb_data1$imdbVotes<5000]="MEDIUM"
imdb_data1$imdbVotescat[imdb_data1$imdbVotes>=5000 ]="HIGH"
imdb_data1$Language[head(imdb_data1$Language,10)|tail(imdb_data1$Language,10)]<-NA
newdata=imdb_data1[which(imdb_data1$Language=="Telugu"),]
imdb_data1$Language <-replace(imdb_data1$Language,imdb_data1$Language=="English" ,"Hindi")
newvector<-c(rep(4,10),rep(5,20),rep(6,30))
length(newvector)
