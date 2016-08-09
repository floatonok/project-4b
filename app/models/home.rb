class Home < ApplicationRecord
  has_many :users
  has_many :cells
  # has_one :section
  # has_one :section, through: :cells
end
