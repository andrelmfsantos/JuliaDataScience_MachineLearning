s1 = "This is Julia"

typeof(s1)

# Usar 3 aspas para colocar em diferentes linhas
s2 = """This is 1st line
This is 2nd
This is 3rd"""
print(s2)

# Usar 3 aspas quando precisar coloar palavras entre aspas em uma string
s3 = """ It "is" raining outside """;
println(s3)

grade = 34

println("My grade is 12")
println("My grade is $grade")  # Usar o cifrão para indicar que a direita é uma variável e não um texto

m1 = "I love"
m2 = " Julia";

string(m1, m2)
string(m1, " Classic", m2)

m2 ^ 100

"André " ^ 100

println(m1[1])
println(m1[3])
println(m1[3:6])

ch = 'm'
typeof(ch)
