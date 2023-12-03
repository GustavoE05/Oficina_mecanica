class CreateFuncionarios < ActiveRecord::Migration[7.1]
  def change
    create_table :funcionarios do |t|
      t.string :nome
      t.string :funcao

      t.timestamps
    end
  end
end
