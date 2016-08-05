class HomeSerializer < ActiveModel::Serializer
  attributes :id, :size
  has_many :users
  has_many :section_grids
end
