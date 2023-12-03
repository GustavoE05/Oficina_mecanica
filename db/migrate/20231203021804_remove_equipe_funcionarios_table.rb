class RemoveEquipeFuncionariosTable < ActiveRecord::Migration[7.1]
  def change
    def up
      drop_table :equipe_funcionarios
    end
  
    def down
      raise ActiveRecord::IrreversibleMigration
    end
  end
end
