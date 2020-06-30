#=
John = 555
Alice = 111
Bob = 333
=#
phonebook = Dict("John" => "555", "Alice" => "111", "Bob" => "333")

println(keys(phonebook))
println(values(phonebook))

phonebook["John"]  # exibe os valores da respectiva chave

for (k,v) in phonebook   # retorna todas chaves e seus valores
    println("$k, $v")
end

collect(keys(phonebook))  # retorna todas as chaves do dicionário

haskey(phonebook, "John")  # verifica se a chave existe no dicionário
