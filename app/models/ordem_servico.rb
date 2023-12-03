class OrdemServico < ApplicationRecord
    belongs_to :equipe
    belongs_to :veiculo
    belongs_to :cliente
    has_and_belongs_to_many :servicos, join_table: "ordem_de_servico_servicos"
    has_and_belongs_to_many :parts
    
end
