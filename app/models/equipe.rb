class Equipe < ApplicationRecord
    has_many :funcionarios, dependent: :destroy
    has_many :ordem_servicos, dependent: :destroy
end
  