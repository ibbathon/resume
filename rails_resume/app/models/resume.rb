class Resume < ApplicationRecord
  has_many :sections
  belongs_to :profile
  validates :primary, uniqueness: true, if: :primary?
end
