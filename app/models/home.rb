class Home < ApplicationRecord
  has_many :users
  has_many :cells
  # has_one :section, through: :cell
end
