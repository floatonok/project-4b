class CreateHomes < ActiveRecord::Migration[5.0]
  def change
    create_table :homes do |t|
      t.integer :size

      t.timestamps
    end
  end
end
