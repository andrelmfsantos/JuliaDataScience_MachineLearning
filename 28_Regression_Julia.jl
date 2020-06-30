using DataFrames

dataset = DataFrame(Promote = [23, 56, 34, 25, 67, 82, 46, 14, 6, 47, 52, 88, 71, 78, 66, 44, 68, 90, 22], 
    Sales = [554, 1339, 815, 609, 1600, 2000, 1000, 300, 150, 1150, 1200, 2000, 1750, 2000, 1500, 1000, 1600, 2000, 550])

X = dataset[:Promote]
Y = dataset[:Sales];

#Pkg.add("Plots")
using Plots;

scatter(dataset.Promote, dataset.Sales)

#=
y = mx + c

Sales = m * promote + c

Sales = Slope * promote + Intercept
=#

using Statistics

m = sum((X .- mean(X)) .* (Y .- mean(Y))) / sum((X .- mean(X)) .* (X .- mean(X)))
c = mean(Y) - m .* mean(X);

m, c

Sales = 23.5 * promote + 5.48

23.5 * 50 + 5.48

Pkg.add("GLM")
using GLM

names(dataset)

ols = lm(@formula(Sales ~ Promote), dataset)  # ordinary linear square

using DataFrames

predict(ols, DataFrame(Promote = [50]))

using CSV

s2 = CSV.read("salary.csv")

names(s2)

ols2 = lm(@formula(Salary ~ Years_Previous_Experience + Years_Employed + Years_Education + Gender), s2)

predict(ols2, DataFrame(Years_Previous_Experience = [5], Years_Employed = [7], Years_Education = [12], Gender = ["Male"]))

predict(ols2, DataFrame(Years_Previous_Experience = [5], Years_Employed = [7], Years_Education = [12], Gender = ["Female"]))

predict(ols2, DataFrame(Years_Previous_Experience = [5,4], Years_Employed = [7,9], Years_Education = [12,15], 
        Gender = ["Male","Female"]))
