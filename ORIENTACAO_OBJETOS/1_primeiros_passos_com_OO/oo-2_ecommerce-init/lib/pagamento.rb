class Pagamento
    attr_accessor :quantidade, :produto, :preco
    attr_reader :valor

    def initialize(quantidade:, produto: 'Sem nome', preco:)
        @quantidade = quantidade
        @produto = produto
        @preco = preco
    end

    def calcular_valor
        @valor = preco * quantidade
    end
    
    def aplicar_desconto(desconto)
        @valor = valor - valor * desconto / 100
    end
end
