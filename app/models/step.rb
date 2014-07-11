class Step < ActiveRecord::Base

  belongs_to :person
  belongs_to :office
  belongs_to :file_record
  
  def self.start
    office = Office.find_or_create_by(name: 'Mesa de entrada')
    step = Step.new(office: office)
  end

  def first_step
    self.office = Office.start_office
    save 
  end

  def archivate
    #binding.pry
    self.office = Office.all.archivate
    save
  end

end
