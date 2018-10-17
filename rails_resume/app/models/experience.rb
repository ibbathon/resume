class Experience < ApplicationRecord
  belongs_to :section
  has_many :items
end
