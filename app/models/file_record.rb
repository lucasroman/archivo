class FileRecord < ActiveRecord::Base

  def  save_step
    office = Office.last!
    steps.create(office: office)
  end

  after_save :save_step 
	has_many :steps

end
