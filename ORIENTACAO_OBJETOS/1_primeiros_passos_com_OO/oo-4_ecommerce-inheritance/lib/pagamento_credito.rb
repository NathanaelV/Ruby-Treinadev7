class PagamentoCredito < Pagamento
    attr_accessor :juros
    def initialize(juros: 0, quantidade:, produto:)
        super(quantidade: quantidade, produto: produto)
        @juros = juros
    end

    def atualizar_valor
        @valor += valor * juros/100
    end
end