class AddFnacimientoToUsuarios < ActiveRecord::Migration[6.1]
  def down
    add_column :usuarios, :fnacimiento, :date
  end
end
