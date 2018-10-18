class Item < ApplicationRecord
  belongs_to :experience

  after_create :default_display_order

  def default_display_order
    prev_min = experience.items.minimum("display_order")
    prev_min = 1000 if prev_min.nil?
    update_columns(display_order: prev_min-1) if display_order.nil?
  end
end
