large.islands<-head(sort(islands,decreasing = TRUE),10)
plot(large.islands,main="Land area of continents and islands",
     ylab="Land area in square miles")
text(large.islands,labels=names(large.islands),adj=c(0.5,1))
plot(faithful)
short.eruptions <- with(faithful, faithful[eruptions<3,])
plot(faithful)
points(short.eruptions,col="red",pch=19)
fit<-lm(waiting~eruptions,data=faithful)
lines(faithful$eruptions,fitted(fit),col="blue")
abline(v=3,col="purple")
abline(h=mean(faithful$waiting))
abline(a=coef(fit)[1],b=coef(fit)[2])
abline(fit,col="red")
plot(LakeHuron,type="l",main="type=\"l\"")
plot(LakeHuron,type="p",main="type=\"p\"")
plot(LakeHuron,type="b",main="type=\"b\"")
plot(LakeHuron,type="c",main="type=\"c\"")
plot(LakeHuron,type="o",main="type=\"o\"")
plot(LakeHuron,type="h",main="type=\"h\"")
plot(LakeHuron,type="n",main="type=\"n\"")
with(mtcars,plot(mpg,disp))
with(mtcars,boxplot(mpg,disp))
with(mtcars,hist(mpg))
pairs(iris)
pairs(iris[1:4])
x<-seq(0.5,1.5,0.25)
y<-rep(1,length(x))
plot(x,y,type="n")
points(x,y)
plot(faithful,
     main="Eruptions of Old Faithful",
     xlab="Eruption time (min)",
     ylab="Waiting time to next eruption (Min)")
plot(faithful,las=0)
plot(faithful,las=1)
plot(faithful,las=2)
plot(faithful,las=3)
plot(faithful,bty="n")
plot(faithful,las=1,bty="l",col="red",pch=19)
x<-seq(0.5,1.5,0.25)
y<-rep(1,length(x))
plot(x,y,main="Effect of cex on text size")
text(x,y+0.1,labels=x,cex=x)
plot(x,y,main="Effect of cex.main, cex.lab and cex.axis",
     cex.main=1.25,cex.lab=1.5,cex.axis=0.75)
old.par<-par(mfrow=c(1,2))
plot(faithful,main="Faithful eruptions")
plot(large.islands,main="Islands",ylab="Area")
par(old.par)
par(mfrow=c(1,1))
png(filename = "faithful.png")
plot(faithful)
dev.off()