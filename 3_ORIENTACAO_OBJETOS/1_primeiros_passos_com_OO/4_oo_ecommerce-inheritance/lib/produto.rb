class Produto
  attr_accessor :nome, :estoque, :categoria, :preco

  def initialize(nome:, estoque:, categoria: Categoria.new, preco:)
    @nome = nome
    @estoque = estoque
    @categoria = categoria
    @preco = preco
  end

  def adiciona_estoque(quantidade)
    @estoque += quantidade
  end

  def remove_estoque(quantidade)
    @estoque -= quantidade
  end
end