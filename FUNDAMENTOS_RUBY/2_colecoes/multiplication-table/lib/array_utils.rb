class ArrayUtils
  def self.multiplos(qtd, multiplo)
      Array(1..qtd).map! {|a| a * multiplo}
  end

  def self.tabuada(n_array) # Por que precisa do self?
      arr = Array(1..10)
      resp = []
      (1..n_array).each do |multiplo|
          resp << arr.map {|a| a * multiplo}
      end
      resp
  end
end
