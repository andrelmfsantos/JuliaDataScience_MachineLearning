using CSV

dataset = CSV.read("camera.csv")

names(dataset)

using Plots

scatter(dataset.price, dataset.camera_mp)

using GLM

model = glm(@formula(camera_mp ~ price), dataset, Binomial(), LogitLink())

Pkg.add("DataFrames")
using DataFrames

predict(model, DataFrame(price=[390]))

predict(model, DataFrame(price=[390,400,410,420, 430, 440]))

#=
<0.5 -> class 0
>0.5 -> class 1
=#
