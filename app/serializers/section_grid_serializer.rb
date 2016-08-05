class SectionGridSerializer < ActiveModel::Serializer
  attributes :id, :occupied
  has_one :home
end
