class Funcionario < ApplicationRecord
    belongs_to :equipe

    def self.total_funcionarios
        count
    end

end
