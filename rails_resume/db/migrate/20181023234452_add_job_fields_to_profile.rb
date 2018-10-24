class AddJobFieldsToProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :preferred_name, :string
    add_column :profiles, :linkedin_url, :string
    add_column :profiles, :github_url, :string
  end
end
