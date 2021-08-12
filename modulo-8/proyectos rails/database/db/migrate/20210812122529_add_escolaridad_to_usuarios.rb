class AddEscolaridadToUsuarios < ActiveRecord::Migration[6.1]
  def change
    add_column :usuarios, :escolaridad, :string
  end
end
