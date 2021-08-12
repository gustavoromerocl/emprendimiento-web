class AddProfessionToUsuarios < ActiveRecord::Migration[6.1]
  def change
    add_column :usuarios, :profesion, :string
  end
end
