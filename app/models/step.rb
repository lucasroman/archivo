class Step < ActiveRecord::Base

  def self.start
  	office = Office.where(name: 'Mesa de entrada').first!

    if office.name != 'Mesa de entrada'
      office = Office.create(name: 'Mesa de entrada')
    end

    step = Step.new(office: office)
    office.steps << step
  end

  belongs_to :person
  belongs_to :office
  belongs_to :file_record
  


end
