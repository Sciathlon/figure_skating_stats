#analysis of stats on olympics figure skating

#loading libraries
library(ggplot2)

#reading csv file
medalCount <- read.csv(file="./stats_athletes_with_medals_count.csv", header=TRUE, sep=",")
medalCountdf <- data.frame(medalCount)


sum(medalCountdf$G)+sum(medalCountdf$S)+sum(medalCountdf$B)
ggplot(data=medalCountdf, aes(x=NationID, y=(sum(medalCountdf$G)+sum(medalCountdf$S)+sum(medalCountdf$B)))) +
  geom_bar(stat="identity")
