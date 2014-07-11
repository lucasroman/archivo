class FileRecord < ActiveRecord::Base

  has_many :steps, dependent: :destroy
  after_create :create_first_step

  def create_first_step
    #office = Office.first!
    #steps.create(office: office)
    steps.build.first_step
  end

  def update_file_record
    office = Office.last!
    steps.create(office: office)
  end

  def create
    step.start
  end

  def archivate
    steps.build.archivate
  end

end
