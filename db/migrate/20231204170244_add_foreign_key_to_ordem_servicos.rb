class AddForeignKeyToOrdemServicos < ActiveRecord::Migration[7.1]
  def change
    add_column :ordem_servicos, :parts_id, :bigint
    add_column :ordem_servicos, :servicos_id, :bigint

    add_foreign_key :ordem_servicos, :parts, column: "parts_id"
    add_foreign_key :ordem_servicos, :servicos, column: "servicos_id"
  end
end
