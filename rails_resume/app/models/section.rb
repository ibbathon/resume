class Section < ApplicationRecord
  belongs_to :resume
  has_many :experiences

  after_create :default_display_order

  def default_display_order
    prev_min = resume.sections.minimum("display_order")
    prev_min = 1000 if prev_min.nil?
    update_columns(display_order: prev_min-1) if display_order.nil?
  end
end
