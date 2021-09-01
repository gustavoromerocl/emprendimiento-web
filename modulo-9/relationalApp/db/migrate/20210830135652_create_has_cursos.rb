class CreateHasCursos < ActiveRecord::Migration[6.1]
  def change
    create_table :has_cursos do |t|
      t.references :usuario, null: false, foreign_key: true
      t.references :curso, null: false, foreign_key: true

      t.timestamps
    end
  end
end
