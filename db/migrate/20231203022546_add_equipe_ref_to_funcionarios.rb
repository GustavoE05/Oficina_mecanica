class AddEquipeRefToFuncionarios < ActiveRecord::Migration[7.1]
  def change
    add_reference :funcionarios, :equipe, null: false, foreign_key: true
  end
end
