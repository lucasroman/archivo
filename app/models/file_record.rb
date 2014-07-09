class FileRecord < ActiveRecord::Base

  def self.archivate
    step.archivate
    step.file_record_id = @file_record.id
  end
  
  def create_step
    office = Office.first!
    steps.create(office: office)
  end

  def update_file_record
    office = Office.last! # Referencia a la oficina seleccionada en edit
    steps.create(office: office)
  end

  def create
    step.start
  end


  has_many :steps
  after_create :create_step

end
