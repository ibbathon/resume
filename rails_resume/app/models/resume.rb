class Resume < ApplicationRecord
	validates :primary, uniqueness: true, if: :primary?
end
