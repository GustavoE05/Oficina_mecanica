class Servico < ApplicationRecord
    has_and_belongs_to_many :ordem_servicos, join_table: "ordem_de_servico_servicos"
end
