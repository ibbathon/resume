class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :descriptor
      t.string :name
      t.string :address
      t.string :phone
      t.string :email
      t.boolean :primary, default: false

      t.timestamps
    end
  end
end
