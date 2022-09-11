class ArrayUtils
  def self.multiplos(qtd, multiplo)
      Array(1..qtd).map! {|a| a * multiplo}
  end

# Por que precisa do self?
# Por que a classe não tem o método new
# O método se refere direto a classe e não há um objeto criado pelo ClassName.new

  def self.tabuada(n_array)
      resp = []
      (1..n_array).each do |multiplo|
          resp << Array(1..10).map {|a| a * multiplo}
      end
      resp
  end
end
