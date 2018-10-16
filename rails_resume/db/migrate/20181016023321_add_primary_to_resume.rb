class AddPrimaryToResume < ActiveRecord::Migration[5.2]
  def change
    add_column :resumes, :primary, :boolean
  end
end
