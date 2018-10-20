class RemoveDisplayOrderFromSection < ActiveRecord::Migration[5.2]
  def change
    remove_column :sections, :display_order, :integer
  end
end
