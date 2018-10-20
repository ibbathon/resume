class ChangeResumeSectionItemRelationshipPart3 < ActiveRecord::Migration[5.2]
  def change
    remove_reference :sections, :resume_id, foreign_key: true
  end
end
