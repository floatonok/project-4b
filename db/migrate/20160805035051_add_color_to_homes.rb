class AddColorToHomes < ActiveRecord::Migration[5.0]
  def change
    add_column :homes, :color, :string
  end
end
