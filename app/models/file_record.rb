class FileRecord < ActiveRecord::Base

	has_many :steps
  	
  include file_records

end
