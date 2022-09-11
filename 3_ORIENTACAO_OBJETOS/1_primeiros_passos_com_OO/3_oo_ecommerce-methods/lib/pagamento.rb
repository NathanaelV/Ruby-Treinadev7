class Pagamento
  attr_accessor :quantidade, :produto, :valor

  def initialize(quantidade:, produto: )
    @quantidade = quantidade
    @produto = produto
  end

  def calcular_valor
    @valor = @quantidade * @produto.preco
    @produto.remove_estoque(@quantidade)
  end

  def aplicar_desconto(desconto)
    @valor *= (100 - desconto) / 100.0
  end
end
