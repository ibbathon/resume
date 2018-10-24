class CreateResumeLayouts < ActiveRecord::Migration[5.2]
  def change
    create_table :resume_layouts do |t|
      t.string :name
      t.string :uid
      t.string :experience_header

      t.timestamps
    end
  end
end
