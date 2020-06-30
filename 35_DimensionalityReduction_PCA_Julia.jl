import Pkg
Pkg.add("Pkg")
using Pkg

Pkg.add("MultivariateStats")

Pkg.add("Plots")

using MultivariateStats, Plots

Pkg.add("CSV")
using CSV

iris = CSV.read("iris.csv")

names(iris)

input = convert(Matrix, iris[:,2:5])'

M = fit(PCA, input, maxoutdim = 2)

M.prinvars

i_transform = transform(M, input)

transpose(i_transform)

using Plots
scatter(i_transform'[1:20,1], i_transform'[1:20,2],markercolor = [:red])
scatter!(i_transform'[21:40,1], i_transform'[21:40,2],markercolor = [:green])
scatter!(i_transform'[41:50,1], i_transform'[41:50,2],markercolor = [:blue])
