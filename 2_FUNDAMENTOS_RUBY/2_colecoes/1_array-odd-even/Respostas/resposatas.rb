# 1
class Arrays
  def self.converte_impares_por(lista, numero)
    impar = lista.select do |multiplos|
      multiplos.odd?
    end
    
    multiplos = impar.map do |impar|
      impar * numero
    end

    [impar, multiplos]
  end

  def self.converte_pares_por(lista, numero)
    par = lista.select do |multiplos|
      multiplos.even?
    end
    
    multiplos = par.map do |par|
      par * numero
    end

    [par, multiplos]
  end
end


# 2
class Arrays
  def self.converte_impares_por(lista, numero)
    array =[]
    array << lista.keep_if { |x| x.odd?}
    array << lista.map { |x| x * numero}
  end

  def self.converte_pares_por(lista, numero)
    array =[]
    array << lista.keep_if { |x| x.even?}
    array << lista.map { |x| x * numero}
  end
end


# 3
class Arrays
  def self.converte_impares_por(lista, numero)
    impares = Array.new
    multiplos = Array.new
    resultado = Array.new
    lista.each do |dado|
      if dado.odd?()
        impares << dado
        multiplos << dado * numero
      end
    end
    resultado << impares
    resultado << multiplos
  end

  def self.converte_pares_por(lista, numero)
    pares = Array.new
    multiplos = Array.new
    resultado = Array.new
    lista.each do |dado|
      if dado.even?()
        pares << dado
        multiplos << dado * numero
      end
    end
    resultado << pares
    resultado << multiplos
  end
end


# 4
class Arrays
  def self.converte_impares_por(lista, numero)
    
    impar = lista.select(&:odd?)    
    
    
    [impar, impar.map{|x| x * numero}]
  end

  def self.converte_pares_por(lista, numero)

    par = lista.select(&:even?) 
    
    [par, par.map{ |x| x * numero}]

  end
end

