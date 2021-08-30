class AddCityRefToUsuario < ActiveRecord::Migration[6.1]
  def change
    add_reference :usuarios, :cities, null: false, foreign_key: true
  end
end
