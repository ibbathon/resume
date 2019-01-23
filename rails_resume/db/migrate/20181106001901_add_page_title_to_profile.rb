class AddPageTitleToProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :page_title, :string
  end
end
