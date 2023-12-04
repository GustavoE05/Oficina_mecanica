class Part < ApplicationRecord
    has_and_belongs_to_many :ordem_servicos
    def self.valor_total_em_estoque
        Part.sum(:valor)
    end
    def self.total_em_estoque
        Part.sum(:quantidade)
    end
end
