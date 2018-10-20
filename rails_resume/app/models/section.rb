class Section < ApplicationRecord
  has_many :resume_sections
  has_many :resumes, through: :resume_sections
  has_many :experiences
end
