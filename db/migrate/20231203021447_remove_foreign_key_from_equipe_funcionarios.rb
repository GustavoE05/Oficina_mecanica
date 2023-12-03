class RemoveForeignKeyFromEquipeFuncionarios < ActiveRecord::Migration[7.1]
  def change
    remove_foreign_key :equipe_funcionarios, :funcionarios
  end
end
