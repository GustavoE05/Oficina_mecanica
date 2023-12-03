class Veiculo < ApplicationRecord
    belongs_to :cliente
    has_many :ordem_servicos
end
