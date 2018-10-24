class Resume < ApplicationRecord
  has_many :resume_sections
  has_many :sections, through: :resume_sections
  has_many :resume_items
  has_many :items, through: :resume_items

  belongs_to :profile

  belongs_to :preferred_style, class_name: 'Style', optional: true
  belongs_to :preferred_layout, class_name: 'ResumeLayout', optional: true

  belongs_to :preferred_pdf_style, class_name: 'Style', optional: true
  belongs_to :preferred_pdf_layout, class_name: 'ResumeLayout', optional: true

  validates :primary, uniqueness: true, if: :primary?
end
