class CreateCells < ActiveRecord::Migration[5.0]
  def change
    create_table :cells do |t|
      t.boolean :occupied
      t.references :home, foreign_key: true
      t.references :section, foreign_key: true

      t.timestamps
    end
  end
end
