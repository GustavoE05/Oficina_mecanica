class Cliente < ApplicationRecord
    has_many :ordem_servicos, dependent: :destroy
    has_many :veiculos, dependent: :destroy

    
  def self.total_clientes
    count
  end
  
end
