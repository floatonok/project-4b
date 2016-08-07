class CellSerializer < ActiveModel::Serializer
  attributes :id, :occupied
  has_one :home
  has_one :section
end
