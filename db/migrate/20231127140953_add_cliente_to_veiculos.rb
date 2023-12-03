class AddClienteToVeiculos < ActiveRecord::Migration[7.1]
  def change
    add_reference :veiculos, :cliente, null: false, foreign_key: true
  end
end
