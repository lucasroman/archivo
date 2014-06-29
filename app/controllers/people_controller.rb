class PeopleController < ApplicationController
  
  def index
  	@people = Person.all
  end

  def new
  	@person = Person.new
  end

end
