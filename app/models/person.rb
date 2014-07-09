class Person < ActiveRecord::Base

	has_many :steps, dependent: :destroy

	validates :name, presence: true, length: { minimum: 3 }
	validates :dni, presence: true, length: { minimum: 8 }
	
end
