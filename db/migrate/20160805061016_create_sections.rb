class CreateSections < ActiveRecord::Migration[5.0]
  def change
    create_table :sections do |t|
      t.integer :height
      t.integer :width

      t.timestamps
    end
  end
end
