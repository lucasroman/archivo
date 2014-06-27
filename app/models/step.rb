class Step < ActiveRecord::Base

  belong_to :person
  belong_to :office
  belong_to :record
  
end
