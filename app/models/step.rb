class Step < ActiveRecord::Base

  belongs_to :person
  belongs_to :office
  belongs_to :file_record
  
  def start
  	office = Office.where(name: 'Mesa de entrada').first!

    if office.name != 'Mesa de entrada'
      office = Office.new(name: 'Mesa de entrada')
    end

    step = Step.new
    office.steps << step
  end
  
end
