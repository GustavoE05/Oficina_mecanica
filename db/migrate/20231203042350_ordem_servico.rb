class OrdemServico < ActiveRecord::Migration[7.1]
  def change
    add_reference :ordem_servicos, :equipe, foreign_key: true
    add_reference :ordem_servicos, :cliente, foreign_key: true
    add_reference :ordem_servicos, :veiculo, foreign_key: true
  end
end
