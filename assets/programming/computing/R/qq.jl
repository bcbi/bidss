# This file was generated, do not modify it. # hide
using RCall
using RDatasets
mtcars = dataset("datasets","mtcars");

@rput mtcars

R"
png('qqnorm.png')
qqnorm(mtcars$Disp)
qqline(mtcars$Disp)
dev.off()
"