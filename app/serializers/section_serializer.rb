class SectionSerializer < ActiveModel::Serializer
  attributes :id, :height, :width
  has_many :cells
end
