class SectionSerializer < ActiveModel::Serializer
  attributes :id, :height, :width
  has_many :section_grids
end
