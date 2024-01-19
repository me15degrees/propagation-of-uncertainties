# f(x,y) = x + y
function propaga_incertezas_soma(_, _, Δx, Δy)
    Δf = sqrt(Δx^2 + Δy^2)
    return Δf
end

# exemplo de uso
x1 = 10.0
y1 = 3.0
Δx1 = 0.1
Δy1 = 0.2

incerteza_soma = propaga_incertezas_soma(x1, y1, Δx1, Δy1)
println("Incerteza na Soma: ", round(incerteza_soma, digits=2))



# f(x,y) = x * y
function propaga_incertezas_multiplicacao(x, y, Δx, Δy)
    Δf = sqrt((y * Δx)^2 + (x * Δy)^2)
    return Δf
end

# exemplo de uso
x2 = 10.0
y2 = 3.0
Δx2 = 0.1
Δy2 = 0.2

incerteza_multiplicacao = propaga_incertezas_multiplicacao(x2, y2, Δx2, Δy2)
println("Incerteza na Multiplicação: ", round(incerteza_multiplicacao, digits=2))



# f(x,y) = x / y
function propaga_incertezas_divisao(x, y, Δx, Δy)
    Δf = abs(x/y) * sqrt((Δx/x)^2 + (-x/(y^2))^2 * Δy^2)
    return Δf
end

# exemplo de uso
x3 = 10.0
y3 = 3.0
Δx3 = 0.1
Δy3 = 0.2

incerteza_divisao = propaga_incertezas_divisao(x3, y3, Δx3, Δy3)
println("Incerteza na Divisão: ", round(incerteza_divisao, digits=2))
