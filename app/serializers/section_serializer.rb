class SectionSerializer < ActiveModel::Serializer
  attributes :id, :height, :width
  has_many :cells, :order => "id asc"
  has_many :homes, through: :cells
end
