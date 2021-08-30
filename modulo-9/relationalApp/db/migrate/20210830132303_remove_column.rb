class RemoveColumn < ActiveRecord::Migration[6.1]
  def change
    remove_column :usuarios, :city_id
  end
end
