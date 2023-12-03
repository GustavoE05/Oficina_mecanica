class AddDescricaoToequipe < ActiveRecord::Migration[7.1]
  def change
    add_column :equipes, :descricao, :string
  end
end
