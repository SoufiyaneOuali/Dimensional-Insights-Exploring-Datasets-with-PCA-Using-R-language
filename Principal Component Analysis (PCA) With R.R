pca.data=read.csv2("E:\\my study\\MA\\BdSas_S1\\Macours\\2_Modulsation_stat_Analyse_donnee\\TPs\\Poisson.csv")
summary(pca.data)
view(pca.data)
pca.corelation =cor(pca.data)
pca.covar=cov(pca.data)
pca.corelation
View(pca.corelation)
View(pca.covar)
pca.res<-PCA(pca.data,scale.unit=FALSE,ncp=3)
pca.res$eig
pca.res$var
pca.res$ind
help(pca)
dimdesc(pca.res)
pca.res$ind$coord
a=prompt(pca.res)


data("decathlon")
View(decathlon)
summary(decathlon)
View(cov(decathlon[,-13]))
dec.pca=PCA(decathlon,quanti.sup=11:12,quali.sup=13)
barplot(dec.pca$eig)
require(Factoshiny)
res <- PCAshiny(decathlon)
summary(dec.pca)
plot.PCA(dec.pca)
res.pca <- PCA(decathlon, quanti.sup = 11:12, quali.sup=13)
## plot of the eigenvalues
 barplot(res.pca$eig[,1],main="Eigenvalues",names.arg=1:nrow(res.pca$eig))
summary(res.pca)


##triater les baleur manqué
require(missMDA)
a=data(orange)
a=orange
a=na.omit(a)
nb <- estim_ncpPCA(orange ,ncp.min=0,ncp.max=5,method.cv="Kfold",nbsim=50)

imputed <- imputePCA(orange,ncp=nb$ncp)
res.pca <- PCA(imputed$completeObs)
res.pca
summary(res.pca)
