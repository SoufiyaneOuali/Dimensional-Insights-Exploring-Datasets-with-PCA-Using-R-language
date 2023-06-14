proteine <- read.table("C:/RTP/proteine.txt", encoding="ASCII",
                       header=TRUE, row.names=1, quote="\"")

View(proteine)
library("FactoMineR")
library("factoextra")
library("corrplot")
res<-PCA(proteine,graph=FALSE,ncp=4)
res
get_eigenvalue(res)
res$svd$U
#------------------------
fviz_eig(res,addlabels=TRUE,ylim=c(0,50))
fviz_pca_var(res,col.var="black")
fviz_pca_var(res,col.var="black",axes=c(1,3))
#----------------------
fviz_pca_ind(res,col.var="black")
fviz_pca_ind(res,col.var="black",axes=c(1,3))
#------------------------
res$ind$contrib
fviz_contrib(res, choice = "ind", axes = 1,top=10)
fviz_contrib(res, choice = "ind", axes = 2)
res$ind$coord
#---------------------------
res$var$contrib
fviz_contrib(res, choice = "var", axes = 1)
fviz_contrib(res, choice = "var", axes = 2)
res$var$coord





res$ind$cos2
fviz_cos2(res, choice = "ind",top=8)
fviz_cos2(res, choice = "ind",axes=1:2)
fviz_pca_ind(res, col.var = "cos2")
res$var$cos2
fviz_cos2(res, choice = "var")
fviz_cos2(res, choice = "var",axes=1:2)
fviz_pca_var(res, col.var = "cos2")

fviz_pca_biplot(res)
fviz_pca_biplot(res,axes=c(1,3))

