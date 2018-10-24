class CreateStyles < ActiveRecord::Migration[5.2]
  def change
    create_table :styles do |t|
      t.string :name
      t.string :uid
      t.string :filename
      t.text :style_text

      t.timestamps
    end
  end
end
