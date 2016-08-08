class Cell < ApplicationRecord
  default_scope {order("id ASC")}
  belongs_to :home, optional: true
  belongs_to :section
end
