#section2_line plot

read.table(file="bimm143_05_rstats/weight_chart.txt", header=TRUE)
weight <- read.table(file="bimm143_05_rstats/weight_chart.txt", header=TRUE)
plot(weight)
plot(weight, type="o", pch=15, cex=1.5, lwd=2, ylim=c(2,10), xlab="Age (months)", ylab="Weight (Kg)", main="Baby weight with age")

#section2_bar plot

read.delim(file="bimm143_05_rstats/feature_counts.txt", header=TRUE)
mouse <- read.delim(file="bimm143_05_rstats/feature_counts.txt", header=TRUE)
barplot(mouse$Count)
barplot(mouse$Count, horiz=TRUE, names.arg=mouse$Feature, las=1, main="Number of features in the mouse GRCm38 genome", xlab="Count", xlim=c(0,80000))

#section3_using color in plots
mf <- read.delim(file="bimm143_05_rstats/male_female_counts.txt")
barplot(mf$Count, names.arg=mf$Sample, col=rainbow(nrow(mf)))
barplot(mf$Count, names.arg=mf$Sample, col=c("blue", "red"))

#section3_coloring by value
genes <- read.delim(file="bimm143_05_rstats/up_down_expression.txt")
nrow(genes)
table(genes$State)
plot(genes$Condition1, genes$Condition2, col=genes$State)
?palette
palette()
levels(genes$State)
palette(c("red","gray","blue"))
plot(genes$Condition1, genes$Condition2, col=genes$State)

#section3_dynamic use of color

meth <- read.delim("bimm143_05_rstats/expression_methylation.txt")
nrow(meth)
plot(meth$promoter.meth, meth$expression)
dcols <- densCols(meth$gene.meth, meth$expression)
plot(meth$promoter.meth, meth$expression, col=dcols, pch=20)
