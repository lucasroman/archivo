class FileRecord < ActiveRecord::Base

  has_many :steps

  after_create :create_step 
  before_update :update_file_record

  def  create_step
    office = Office.first!
    steps.create(office: office)
  end

  def update_file_record
    offices = Office.all
  end

end
