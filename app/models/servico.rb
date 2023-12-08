class Servico < ApplicationRecord
    has_many :ordem_servicos, dependent: :destroy

    def self.total_servicos
        count
    end

end
