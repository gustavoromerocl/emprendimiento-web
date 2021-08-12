class AddDireccionToUsuarios < ActiveRecord::Migration[6.1]
  def change
    add_column :usuarios, :direccion, :string
  end
end
