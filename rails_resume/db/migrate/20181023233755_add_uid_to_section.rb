class AddUidToSection < ActiveRecord::Migration[5.2]
  def change
    add_column :sections, :uid, :string
  end
end
