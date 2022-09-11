class Pagamento
  attr_reader :valor, :produto, :quantidade, :preco

  def initialize(quantidade:, produto: 'Sem nome', preco:)
    @quantidade = quantidade
    @produto = produto
    @preco = preco
  end

  def calcular_valor
    @valor = @quantidade * @preco
  end

  def aplicar_desconto(desconto)
    @valor -= @valor * desconto / 100
  end
end
