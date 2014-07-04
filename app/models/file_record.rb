class FileRecord < ActiveRecord::Base

  after_create :save_step 
  has_many :steps

  def  save_step
    office = Office.first!
    steps.create(office: office)
  end

end
