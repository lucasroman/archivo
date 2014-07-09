class Office < ActiveRecord::Base

	has_many :steps, dependent: :destroy

	validates :name, presence: true, length: { minimum: 3 }
	
end
