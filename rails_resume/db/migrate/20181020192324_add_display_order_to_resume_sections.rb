class AddDisplayOrderToResumeSections < ActiveRecord::Migration[5.2]
  def change
    add_column :resume_sections, :display_order, :integer
  end
end
