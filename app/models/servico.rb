class Servico < ApplicationRecord
    has_many :ordem_servicos, dependent: :destroy
end
