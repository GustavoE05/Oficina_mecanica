class RemoveForeignKeyFromEquipeFuncionario < ActiveRecord::Migration[7.1]
  def change
    remove_foreign_key :equipe_funcionarios, :equipes
  end
end
