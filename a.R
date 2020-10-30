library(dplyr)
library(ggplot2)
library(tidyr)
library(immunedeconv)
library(tibble)

mydata = read.csv("TCGA_LUAD_FPKM.csv")  # read csv file 
knitr::kable(mydata[0:10,0:3])
myfirst=mydata[0:54270 ,0:3]

mydata22 = read.table("gtexGene.txt") 
mydata33=mydata22[,c(4,7)]
knitr::kable(mydata33[0:5,1:2])


myfinla = cbind(hhh = mydata33$V4[ match(myfirst$X, mydata33$V7) ], myfirst)


knitr::kable(myfinla[100:120,])

datain=myfinla[,c(1,3,4)]

kkk=datain[,1]

rownames(datain) = make.names(kkk, unique=TRUE)


data_real_in=datain[,c(2,3)]

aaa20201019 = deconvolute(data_real_in, "quantiseq", tumor = TRUE)







#data_real_in=column_to_rownames(datain, var = 'hhh',unique=TRUE)


#data_real_in=data.matrix(datain, rownames.force = NA)

knitr::kable(data_real_in[100:120,])


a20201019111 = deconvolute(datain, "quantiseq", tumor = TRUE)

a4545l = deconvolute(datain, "mcp_counter")

a=dataset_racle$expr_mat
source(dataset_racle$expr_mat)




test1 = read.table("test1.txt") 
test2 = read.table("test2.txt") 
knitr::kable(test1)

knitr::kable(test2)

list=match(test2$V1, test1$V2)


test_match = cbind(hhh = test1$V1[ match(test2$V1, test1$V2) ], test2)
knitr::kable(test_match)
