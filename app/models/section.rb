class Section < ApplicationRecord
  has_many :cells
  has_many :homes, through: :cells
  # has_many :homes
end
