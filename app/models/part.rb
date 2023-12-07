class Part < ApplicationRecord

    has_many :ordem_servicos

    def self.valor_total_em_estoque
        Part.sum(:preco)
    end
    def self.total_em_estoque
        Part.sum(:quantidade)
    end
end
