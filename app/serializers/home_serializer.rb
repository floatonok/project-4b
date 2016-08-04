class HomeSerializer < ActiveModel::Serializer
  attributes :id, :size
  has_many :users
end
