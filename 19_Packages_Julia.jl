using Pkg          # pacote para instalar packages em Julia

Pkg.installed()    # verifica os pacotes instalados

#=
Pkg.rm("DataFrames")   # remove o pacote
Pkg.add("DataFrames")  # instala o pacote
=#

Pkg.add("Statistics")

using Statistics

mean([3, 7, 9])
