# This file was generated, do not modify it. # hide
using RCall
using RDatasets
mtcars = dataset("datasets","mtcars");

@rput mtcars

R"
png('boxplot2.png')
boxplot(mtcars$Disp)
dev.off()
"