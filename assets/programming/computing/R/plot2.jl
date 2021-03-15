# This file was generated, do not modify it. # hide
using RCall
using RDatasets
mtcars = dataset("datasets","mtcars");

@rput mtcars

R"
png('plot2.png')
plot(mtcars$Disp, mtcars$DRat)
dev.off()
"