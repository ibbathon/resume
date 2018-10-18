class Experience < ApplicationRecord
  belongs_to :section
  has_many :items

  after_create :default_display_order

  def default_display_order
    prev_min = section.experiences.minimum("display_order")
    prev_min = 1000 if prev_min.nil?
    update_columns(display_order: prev_min-1) if display_order.nil?
  end
end
