class CreateOrdemDeServicoServicos < ActiveRecord::Migration[7.1]
  def change
    create_table :ordem_de_servico_servicos do |t|
      t.references :ordem_servicos, null: false, foreign_key: true
      t.references :servicos, null: false, foreign_key: true
      t.integer :quantidade
      t.decimal :valor

      t.timestamps
    end
  end
end
