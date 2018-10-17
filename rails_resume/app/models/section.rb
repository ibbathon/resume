class Section < ApplicationRecord
  belongs_to :resume
  has_many :experiences
end
