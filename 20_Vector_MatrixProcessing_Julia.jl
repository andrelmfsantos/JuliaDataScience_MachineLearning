Pkg.add("Random")

using Random

rand(3,4)

randn(10,2)

randstring()

randstring('A':'C', 20)

v1 = Vector(1:10)

reshape(v1, (2,5))

ones(3,5)

zeros(2,5)

zeros(2,5, 6)

Pkg.add("LinearAlgebra")

using LinearAlgebra

I(10) # Matriz identidade

M = [2 4 5; 1 2 3; 6 7 0]

typeof(M)

size(M)

println(M[1,:])
println(M[:,2])

N = [1 2 3; 4 5 6; 7 8 9]

[M; N]      # concatena pela vertical

hcat(M, N)    # concatenação pela horizontal

vcat(M,N)    # concatenação pela vertical

transpose(M) # Matrix transposta

tr(M)

det(M)  # determinante

inv(M)

UpperTriangular(M)

LowerTriangular(M)

eigvecs(M)  # autovetores
eigvals(M)  # autovalores
