# echo input_list.txt
#rep1,rep2
#DBR1,QKI
#mettl3,mettl14
#m5cWT3 <- read.delim("~/Desktop/BS-RTcircRNA-WT-2Vgenome_rebuildC2T_m5C_Rcommon.bed",header = FALSE,sep = "\t",comment.char = "",stringsAsFactors = F, check.names = F)
#venn_list <- list(m5cWT2[,1], m5cWT3[,1])
#names(venn_list) <- c("rep1","rep2")
venePlot <- function (inputFile){
venn_dat <- read.delim(inputFile, header = 1, sep = ',', stringsAsFactors = F, check.names = F)
venn_list <- list(venn_dat[,1], venn_dat[,2])
names(venn_list) <- colnames(venn_dat)
venn.diagram(venn_list, filename = 'venn.png', fill = c('red', 'blue'), alpha = 0.50, col = 'black', cex = 1, fontfamily = 'serif', cat.col = c('black', 'black'), cat.cex = 1, cat.fontfamily = 'serif', margin = 0.2)
}