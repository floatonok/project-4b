class SectionSerializer < ActiveModel::Serializer
  attributes :id, :height, :width
  has_many :cells
  has_many :homes, through: :cells
end
