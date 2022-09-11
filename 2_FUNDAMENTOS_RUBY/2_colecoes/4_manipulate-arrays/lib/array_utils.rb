class ArrayUtils
  def self.compara(lista1, lista2)
    lista1.sort == lista2.sort
  end


  def self.divisiveis(numero1, numero2)

      # Identifica porque não posso igualar estes arrays
      # Se igualar as respostas serão clonadas
      # O que acontece em um, acontece nos outros.
      # resp = div = div_1 = div_2 = []
      resp = [[],[],[]]

      (1..50).each do |seq|
          if seq % numero1 == 0 && seq % numero2 == 0
              resp[0] << seq
          elsif seq % numero1 == 0
              resp[1] << seq
          elsif seq % numero2 == 0
              resp[2] << seq
          end
      end
      resp
  end


  def self.soma(list)
    list.sum
  end


  def self.combinar(list_1, list_2)
    list_1.product(list_2)
  end

end