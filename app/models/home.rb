class Home < ApplicationRecord
  has_many :users
  has_many :section_grids
end
