class OrdemDeServico < ApplicationRecord
  belongs_to :veiculo
  belongs_to :cliente
  belongs_to :equipe
  has_belongs_to_many :servicos
  has_belongs_to_many :pecas
end
