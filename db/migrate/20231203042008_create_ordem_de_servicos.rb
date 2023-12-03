class CreateOrdemDeServicos < ActiveRecord::Migration[7.1]
  def change
    create_table :ordem_de_servicos do |t|
      t.references :veiculo, null: false, foreign_key: true
      t.references :cliente, null: false, foreign_key: true
      t.references :equipe, null: false, foreign_key: true

      t.timestamps
    end
  end
end
