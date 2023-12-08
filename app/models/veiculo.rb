class Veiculo < ApplicationRecord
    belongs_to :cliente, dependent: :destroy
    has_many :ordem_servicos, dependent: :destroy
end
