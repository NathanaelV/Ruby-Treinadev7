class PagamentoCredito < Pagamento
  attr_accessor :quantidade, :juros, :produto
  def initialize(quantidade:, juros:, produto:)
    super(quantidade: quantidade, produto: produto)
    @juros = juros
  end

  def atualizar_valor
    @valor *= (100 + @juros) / 100.0
  end
end