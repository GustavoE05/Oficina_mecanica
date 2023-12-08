class OrdemServico < ApplicationRecord
    belongs_to :veiculo
    belongs_to :cliente
    belongs_to :equipe
    belongs_to :servico
    belongs_to :part

    
    
    def valor_total
        part.preco + servico.valor
    end

    def self.total_ordens_concluidas
        where(concluida: true).count
    end

end
