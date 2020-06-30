N = 34;

if N > 0
    println("N is +ve(positive)")
else
    println("N is -ve(negative)")
end

if N > 25
    println("Number is greater than 25")
elseif (N > 0 && N < 25)
    println("Number is between 0 and 25")
else
    println("Number is -ve")
end

for i = 1:5
    println(i)
end

for i = 1:5, j= 1:5         # para cada elemento em i será pego um correspondente em j
    println(i , " : ", j)
end

arr = [3, 5, "Hello"];

for val in arr
    println(val)
end

i = 1
while i <= 5
    println(i)
    i = i + 1
end
