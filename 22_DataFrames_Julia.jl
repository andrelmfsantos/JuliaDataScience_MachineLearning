using Pkg

Pkg.add("DataFrames")

using DataFrames

DataFrame()

DataFrame(A = 1:4, B = rand(4))
DataFrame(rand(10,3))

X1 = DataFrame(rand(10,3))     # Transforma o dataframe em matriz
Matrix(X1)

Pkg.add("Tables")
using Tables

tb = Tables.columntable(X1)

typeof(tb)

tb.x1
tb.x2
tb.x3

names(X1)  # nomes das colunas

size(X1)  # dimensões do dataframe (linhas, colunas)

size(X1, 1), size(X1, 2)

nrow(X1)
ncol(X1)

describe(X1)

describe(X1, cols = 1:2)

eltype.(eachcol(X1))

first(X1)  # igual ao head() do python, exibe a primeira linha do dataframe

first(X1, 5)

last(X1) # similar ao tail() exibe a última linha do dataframe

X1

# X1[ Row, Column]

X1[1:7, 1:2]  # pega as linhas selecionadas (1 a 7) e as colunas selecionadas (1 e 2)

X1[1:7,:]  # pegas as linhas selecionadas (1 a 7) de todas as colunas

X1[:, 1:2] # pega todas linhas das colunas selecionadas (1 e 2)

X1[:, 3]   # Pega todas linhas da terceira coluna

X1[:, end]  # Pega todas linhas da última coluna

X1[: , Between(:x1, :x3)]

X1.x4 = rand(10) # cria uma nova coluna no final da matriz

X1

df = DataFrame(A = [true, false, true], B=[23, 45, 67], C=['a', 'c', 'b'])

Pkg.add("CSV")

using CSV

CSV.write("df.csv", df)

new_df = CSV.read("df.csv")

Pkg.add("Serialization")

using Serialization

open("df.bin", "w") do io   #escreve o documento em formato binário
    serialize(io, df)
end

open(deserialize, "df.bin")

Pkg.add("JSONTables")

using JSONTables

open(io -> arraytable(io, df), "df.json", "w")

open(jsontable, "df.json") |> DataFrame

M1 = DataFrame(rand(5,4))

rename(M1, :x1 => :c1) # Não modifica o nome da coluna no objeto original

M1

rename!(M1, :x1 => :c1)  # modifica o nome da coluna no objeto original

M1

rename(M1, [:c1, :c2, :c3, :c4])

rename(M1, string.('a':'d'))

M2 = DataFrame(rand(5,4))

hcat(M1,M2, makeunique=true)  # concate dois dataframes quando as colunas não são correspondentes

rename!(M1, :c1 => :x1)
vcat(M1, M2)

[M1 DataFrame(A=[1,2,3,4,5])]

insertcols!(M1, 3, newcol=[1,2,3,4,5])

M1[:, [:x2, :x3]]

cp_M1 = copy(M1)

M1 == cp_M1

sort(M1, :x1)

deleterows!(M1, 4)

filter(r ->r.x1 > 0.6, M1)
