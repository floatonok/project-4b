class SectionGrid < ApplicationRecord
  belongs_to :home, optional: true
  belongs_to :section
end
