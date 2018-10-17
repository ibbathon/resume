class AddDisplayOrderToSectionExperienceItem < ActiveRecord::Migration[5.2]
  def change
    add_column :sections, :display_order, :integer, default: 999
    add_column :experiences, :display_order, :integer, default: 999
    add_column :items, :display_order, :integer, default: 999
  end
end
