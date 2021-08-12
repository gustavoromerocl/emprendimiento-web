class AddFnacimientoToUsuarios < ActiveRecord::Migration[6.1]
  def change
    add_column :usuarios, :fnacimiento, :date
  end
end
