class ResumeSection < ApplicationRecord
  belongs_to :resume
  belongs_to :section

  after_create :default_display_order

  def default_display_order
    return if !display_order.nil?
    prev_max = resume.resume_sections.maximum("display_order")
    prev_max = 0 if prev_max.nil?
    update_columns(display_order: prev_max+1)
  end
end
