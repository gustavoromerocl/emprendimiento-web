class CreatePresidentes < ActiveRecord::Migration[6.1]
  def change
    create_table :presidentes do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
