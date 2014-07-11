class Office < ActiveRecord::Base

	has_many :steps, dependent: :destroy

	validates :name, presence: true, length: { minimum: 3 }

	def self.start_office
	    Office.find_or_create_by(name: 'Mesa de entrada')
	end

	def archivate
    office = Office.find_or_create_by(name: 'Archivo')
    step = Step.new(office: office)
  end
	
end
