def soma(primeiro_numero, segundo_numero)
    primeiro_numero + segundo_numero
end

def subtracao(primeiro_numero, segundo_numero)
    primeiro_numero - segundo_numero
end

def multiplicacao(primeiro_numero, segundo_numero)
    primeiro_numero * segundo_numero
end

def divisao(dividendo, divisor)
    return "Opa! Zero como divisor" if divisor == 0
    dividendo / divisor
end
