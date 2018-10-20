class ChangeResumeSectionItemRelationshipPart2 < ActiveRecord::Migration[5.2]
  def change
    ActiveRecord::Base.transaction do
      Section.where.not(resume_id: nil).find_each do |section|
        next if ResumeSection.find_by(resume_id: section.resume_id, section_id: section.id)
        ResumeSection.create!(resume_id: section.resume_id, section_id: section.id)
      end
      Item.where.not(experience_id: nil).find_each do |item|
        next if item.experience.section_id.nil?
        next if item.experience.section.resume_id.nil?
        next if ResumeItem.find_by(resume_id: item.experience.section.resume_id, item_id: item.id)
        ResumeItem.create!(resume_id: item.experience.section.resume_id, item_id: item.id)
      end
    end
  end
end
