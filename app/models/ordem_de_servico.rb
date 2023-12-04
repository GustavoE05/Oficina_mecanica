class OrdemDeServico < ApplicationRecord
  belongs_to :veiculo
  belongs_to :cliente
  belongs_to :equipe
  belongs_to :servicos
  belongs_to :parts
end
