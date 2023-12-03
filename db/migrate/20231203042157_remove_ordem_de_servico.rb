class RemoveOrdemDeServico < ActiveRecord::Migration[7.1]
  def change
    drop_table :ordem_de_servicos
  end
end
