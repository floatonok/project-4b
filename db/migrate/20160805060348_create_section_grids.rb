class CreateSectionGrids < ActiveRecord::Migration[5.0]
  def change
    create_table :section_grids do |t|
      t.boolean :occupied
      t.references :home, foreign_key: true

      t.timestamps
    end
  end
end
