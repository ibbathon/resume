class Item < ApplicationRecord
  belongs_to :experience
  has_many :resume_items
  has_many :resumes, through: :resume_items

  scope :resume_limited, -> (resume) {
    joins(:resume_items).where(resume_items: {resume_id: resume.id})
  }

  after_create :default_display_order, :add_to_resumes

  def default_display_order
    return if !display_order.nil?
    # Default to being the most recent item in the experience
    prev_min = experience.items.minimum("display_order")
    prev_min = 1000 if prev_min.nil?
    update_columns(display_order: prev_min-1)
  end

  def add_to_resumes
    # Automatically display all new items in all resumes
    experience.section.resumes.each {|r| r.items << self}
  end
end
