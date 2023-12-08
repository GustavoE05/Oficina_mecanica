class OrdemServico < ApplicationRecord
    belongs_to :veiculo
    belongs_to :cliente
    belongs_to :equipe
    belongs_to :servico
    belongs_to :part
    
    def valor_total
        (part&.preco.to_f || 0) + (servico&.valor.to_f || 0)
    end

end
