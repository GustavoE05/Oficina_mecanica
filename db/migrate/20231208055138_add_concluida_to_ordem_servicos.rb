class AddConcluidaToOrdemServicos < ActiveRecord::Migration[7.1]
  def change
    add_column :ordem_servicos, :concluida, :boolean
  end
end
