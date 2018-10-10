mydata<-read.table("geo.csv",header=TRUE,sep=",") 

visit.x<-mydata$Longitude

visit.y<-mydata$Latitude 

library(ggplot2)

library(ggmap)

library(sp)

library(maptools)

library(maps)

mp<-NULL 
worldmap <- getMap(resolution = "high")
mapworld<-borders("state",colour = "black",fill="white")

mp<-ggplot() + mapworld+ theme_bw() # +ylim(-10,90) + xlim(50, 200)  #


mp2<-mp+geom_point(aes(x=visit.x,y=visit.y,colour = factor(mydata$color),size=1))+scale_size(range=c(1,3))#+ scale_colour_grey()

mp3<-mp2+theme(legend.position = "none")

#ggsave(filename="world_distribution.png", plot=mp3, dpi = 600)
mp3 