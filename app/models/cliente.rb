class Cliente < ApplicationRecord
    has_many :ordem_servicos;
    has_many :veiculos;
end
