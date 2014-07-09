class FileRecord < ActiveRecord::Base

  def archivate
    step = Step.archivate
    step.file_record_id = self.id
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

  has_many :steps, dependent: :destroy
  after_create :create_step

end
