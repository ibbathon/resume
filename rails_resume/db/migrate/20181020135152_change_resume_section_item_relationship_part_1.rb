class ChangeResumeSectionItemRelationshipPart1 < ActiveRecord::Migration[5.2]
  def change
    # Using hmt instead of hm allows sharing sections between resumes
    create_table :resume_sections do |t|
      t.belongs_to :resume, index: true
      t.belongs_to :section, index: true
      t.timestamps
    end
    add_index :resume_sections, %I(resume_id section_id), name: :resume_section

    # Using a direct connection between resumes and items allows me to hide
    # items on targeted resumes, so I can have uncluttered resumes without
    # losing the data
    create_table :resume_items do |t|
      t.belongs_to :resume, index: true
      t.belongs_to :item, index: true
      t.timestamps
    end
    add_index :resume_items, %I(resume_id item_id), name: :resume_item
  end
end
