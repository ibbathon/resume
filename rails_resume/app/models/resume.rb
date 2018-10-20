class Resume < ApplicationRecord
  has_many :resume_sections
  has_many :sections, through: :resume_sections
  has_many :resume_items
  has_many :items, through: :resume_items
  belongs_to :profile
  validates :primary, uniqueness: true, if: :primary?
end
