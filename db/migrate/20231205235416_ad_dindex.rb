class AdDindex < ActiveRecord::Migration[7.1]
  def change
  
    rename_column :ordem_servicos, :parts_id, :part_id
    rename_column :ordem_servicos, :servicos_id, :servico_id
    
    add_foreign_key :ordem_servicos, :parts, column: "part_id"
    add_foreign_key :ordem_servicos, :servicos, column: "servico_id"

    add_index :ordem_servicos, :part_id
    add_index :ordem_servicos, :servico_id
     
  end
end
