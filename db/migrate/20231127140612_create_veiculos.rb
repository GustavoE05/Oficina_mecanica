class CreateVeiculos < ActiveRecord::Migration[7.1]
  def change
    create_table :veiculos do |t|
      t.string :modelo
      t.string :placa
      t.string :cor
      t.string :dono

      t.timestamps
    end
  end
end
