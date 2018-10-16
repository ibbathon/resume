class CreateExperiences < ActiveRecord::Migration[5.2]
  def change
    create_table :experiences do |t|
      t.string :organization
      t.string :job_title
      t.string :location
      t.string :short_org
      t.date :date_from
      t.date :date_to
      t.string :text_from
      t.string :text_to
      t.references :section, foreign_key: true

      t.timestamps
    end
  end
end
