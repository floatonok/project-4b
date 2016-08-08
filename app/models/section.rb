class Section < ApplicationRecord
  has_many :cells
  has_many :homes
  # has_many :homes, through: :cells
end
