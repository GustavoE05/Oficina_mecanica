class CreateOrdemServicos < ActiveRecord::Migration[7.1]
  def change
    create_table :ordem_servicos do |t|
      t.date :conclusao

      t.timestamps
    end
  end
end
