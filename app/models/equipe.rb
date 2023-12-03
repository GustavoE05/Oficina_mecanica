class Equipe < ApplicationRecord
    has_many :funcionarios
    has_many :ordem_servicos
end
  