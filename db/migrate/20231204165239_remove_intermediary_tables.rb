class RemoveIntermediaryTables < ActiveRecord::Migration[7.1]
  def change
    drop_table :ordem_de_servico_pecas
    drop_table :ordem_de_servico_servicos    
  end
end
