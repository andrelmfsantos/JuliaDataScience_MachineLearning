using Pkg

Pkg.add("Plots")
Pkg.add("Pyplot")
Pkg.add("GR")
Pkg.add("UnicodePlots")

using Plots

gr()

year = [x for x in range(2000, length = 10)]
sale = 100 * rand(10)

plot(year, sale, labels = "Line Plot")

scatter!(year, sale, labels = "Scatter Plot")

plot(year, sale, labels = "Line Plot")
scatter!(year, sale, labels = "Scatter Plot")

plot(year, sale, labels = "Line Plot")
scatter!(year, sale, labels = "Scatter Plot")
xlabel!("Year")
ylabel!("Sale")
title!("Sale between 2000 and 2009")

x = -5:0.2:5
y = x.^2
plot(x,y)

p1 = plot(x,x)
p2 = plot(y,x)
p3 = plot(sin,x)
p4 = plot(cos,x)
plot(p1, p2, p3, p4)

p1 = plot(x,x)
p2 = plot(y,x)
p3 = plot(sin,x)
p4 = plot(cos,x)
plot(p1, p2, p3, p4, layout = (1,4))

plot(sin,x)
plot!(cos,x) # adicionar exclamação modifica o gráfico original

plot(sin,x)
plot(cos,x) # adicionar exclamação modifica o gráfico original

histogram(rand(100))

histogram(rand(100), bin = 10) # usar bin para definir o total de colunas

histogram(randn(100000))  # histograma da distribuição Normal

histogram2d(rand(100000),rand(100000))

histogram2d(randn(100000),randn(100000))

bar([1,2,3])

bar(rand(10))

bar(randn(10))

pie(rand(5))

Pkg.add("UnicodePlots")
using UnicodePlots
unicodeplots()

plot(year, sale, labels = "Line Plot")
scatter!(year, sale, labels = "Scatter Plot")
xlabel!("Year")
ylabel!("Sale")
title!("Sale between 2000 and 2009")
