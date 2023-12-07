class OrdemServico < ApplicationRecord
    belongs_to :veiculo
    belongs_to :cliente
    belongs_to :equipe
    belongs_to :servico
    belongs_to :part
    
end
