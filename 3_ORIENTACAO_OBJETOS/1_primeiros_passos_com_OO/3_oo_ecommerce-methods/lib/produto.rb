class Produto
  attr_accessor :nome, :categoria, :preco, :estoque

  def initialize(nome:, categoria: Categoria.new, preco:, estoque:)
    @nome = nome
    @categoria = categoria
    @preco = preco
    @estoque = estoque
  end

  def adiciona_estoque(valor)
    @estoque += valor
  end

  def remove_estoque(valor)
    @estoque -= valor
  end
end