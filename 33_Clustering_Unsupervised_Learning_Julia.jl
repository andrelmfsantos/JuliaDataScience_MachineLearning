import Pkg

Pkg.add("Pkg")

using Pkg

Pkg.add("Clustering")

# Pkg.add("RDatasets")

using Clustering

using CSV

df = CSV.read("xclara.csv")

using Plots

scatter(df.V1, df.V2)

data = copy(convert(Array{Float64}, df)') # aspas simples faz matriz transposta

seeds = initseeds(:rand, data, 3)

data_kmeans = kmeans(data, 3)  # divide a base no número de clusters indicado (3)

nclusters(data_kmeans) # mostra o total de clusters da base

counts(data_kmeans)  # conta o total de elementos em cada cluster

df.group = assignments(data_kmeans) # cria uma nova coluna dos clusters

df

scatter(df[df.group .== 1, :V1], df[df.group .==1, :V2], markercolor = [:red])
#scatter!(df[df.group .== 2, :V1], df[df.group .==2, :V2], markercolor = [:green])
#scatter(df[df.group .== 3, :V1], df[df.group .==3, :V2], markercolor = [:blue])

scatter(df[df.group .== 1, :V1], df[df.group .==1, :V2], markercolor = [:red])
scatter!(df[df.group .== 2, :V1], df[df.group .==2, :V2], markercolor = [:green])
#scatter(df[df.group .== 3, :V1], df[df.group .==3, :V2], markercolor = [:blue])

scatter(df[df.group .== 1, :V1], df[df.group .==1, :V2], markercolor = [:red])
scatter!(df[df.group .== 2, :V1], df[df.group .==2, :V2], markercolor = [:green])
scatter!(df[df.group .== 3, :V1], df[df.group .==3, :V2], markercolor = [:blue])
