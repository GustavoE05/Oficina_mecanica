class CreateOrdemDeServicoPecas < ActiveRecord::Migration[7.1]
  def change
    create_table :ordem_de_servico_pecas do |t|
      t.references :ordem_servicos, null: false, foreign_key: true
      t.references :parts, null: false, foreign_key: true
      t.integer :quantidade
      t.decimal :valor

      t.timestamps
    end
  end
end
