function welcome()
    println("Hello Ankit")
end

welcome()

function welcome1(name)
    println("Hello $name")
end

welcome1("André")

welcome2(name) = println("Hello $name")

welcome2("Julia")

welcome3 = name -> println("Hello $name")

welcome3("Luis")

function add(x,y)
    z = x + y
end

add(4,6)

function add(x,y)
    z = x + y
    return z
end

arr = [2,3,6,0,-4]

sort(arr)
sort!(arr) # nesse comando modificamos também o objeto original

function f1(x)
    x^2
end

arr1 = [1,3,7,0]

f1(arr1)  # esse comando não serve para operar arrays

map(f1, arr1) # esse comando pega cada elemento no aarays e realiza a respectiva função


