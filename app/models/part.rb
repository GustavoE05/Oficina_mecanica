class Part < ApplicationRecord
    has_and_belongs_to_many :ordem_servicos
    def self.total_em_estoque
        Part.sum(:quantidade)
    end
end
