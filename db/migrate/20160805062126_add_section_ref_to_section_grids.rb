class AddSectionRefToSectionGrids < ActiveRecord::Migration[5.0]
  def change
    add_reference :section_grids, :section, foreign_key: true
  end
end
