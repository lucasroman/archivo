class Step < ActiveRecord::Base

  def self.start
    office = Office.find_or_create_by(name: 'Mesa de entrada')
    step = Step.new(office: office)
  end

  def self.archivate
  	office = Office.find_or_create_by(name: 'Archivo')
    step = Step.new(office: office)
  end

  belongs_to :person
  belongs_to :office
  belongs_to :file_record
  
end
