class RemoveEquipeFuncionarios < ActiveRecord::Migration[7.1]
  def change
    drop_table :equipe_funcionarios
  end
end
