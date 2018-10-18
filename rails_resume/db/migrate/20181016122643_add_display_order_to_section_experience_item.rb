class AddDisplayOrderToSectionExperienceItem < ActiveRecord::Migration[5.2]
  def change
    add_column :sections, :display_order, :integer
    add_column :experiences, :display_order, :integer
    add_column :items, :display_order, :integer
  end
end
