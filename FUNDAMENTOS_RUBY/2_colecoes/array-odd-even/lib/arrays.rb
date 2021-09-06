class Arrays
  def self.converte_impares_por(lista, numero)
    impar = resp = []
    impar = lista.each.select { |n_list| n_list.odd? }
    multiplo = impar.map {|i| numero*i}

    resp << impar << multiplo 
  end


  def self.converte_pares_por(lista, numero)
    par = resp = []
    par = lista.each.select { |n_list| n_list.even?}
    multiplo = par.map {|par| numero*par}

    resp << par << multiplo
  end
end
