class AddProfileToResume < ActiveRecord::Migration[5.2]
  def change
    add_reference :resumes, :profile, foreign_key: true
  end
end
