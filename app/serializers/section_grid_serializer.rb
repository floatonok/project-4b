class SectionGridSerializer < ActiveModel::Serializer
  attributes :id, :occupied
  belongs_to :home
  belongs_to :section
end
