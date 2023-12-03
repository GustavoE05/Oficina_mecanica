class CreateParts < ActiveRecord::Migration[7.1]
  def change
    create_table :parts do |t|
      t.string :nome
      t.integer :quantidade
      t.decimal :preco

      t.timestamps
    end
  end
end
