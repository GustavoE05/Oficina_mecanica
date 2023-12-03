class CreateEquipes < ActiveRecord::Migration[7.1]
  def change
    create_table :equipes do |t|
      t.string :nome
      t.string :Funcionarios

      t.timestamps
    end
  end
end
