library(dplyr)
library(ggplot2)
library(tidyr)
library(immunedeconv)
library(tibble)

#dataset_racle$expr_mat: a dataset of four melanoma patients from Racle
# show the first 5 lines of the gene expression matrix
knitr::kable(dataset_racle$expr_mat[1:10, 2])


mat_test=dataset_racle$expr_mat[0:5,]
mat_test

dataset_racle$expr_mat[0:5,1]

dataset_racle$expr_mat <- df[,1, drop=FALSE]

dataset_racle$expr_mat[0:5,1,drop=FALSE]  # matrix


colnames(mat_test)

#colnames(mat_test)[0] <- "LAU125"
names(mat_test)[1]<-"hahahhah"
colnames(mat_test)

knitr::kable(mat_test)

mat_test



colnames = mat_test("LAU125")

knitr::kable(mat_test)


dataset_racle$expr_mat[0:5,1,drop=FALSE]  # matrix

res_quantiseq_test111111 = deconvolute(dataset_racle$expr_mat[,1,drop=FALSE], "quantiseq", tumor = TRUE)



res_mcp_counter_test = deconvolute(dataset_racle$expr_mat[,0:2], "mcp_counter")


MY_EPIC_test = deconvolute(dataset_racle$expr_mat[0:10,0:1], "epic", tumor = TRUE)
deconvolute_quantiseq.default
