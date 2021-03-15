# This file was generated, do not modify it. # hide
import Pkg; Pkg.add("RCall")
import Pkg; Pkg.add("RDatasets")
using RCall
using RDatasets
mtcars = dataset("datasets","mtcars");
@rput mtcars

R"str(mtcars)"