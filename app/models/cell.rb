class Cell < ApplicationRecord
  belongs_to :home, optional: true
  belongs_to :section
end
