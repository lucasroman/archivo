class OfficesController < ApplicationController

  def index

  end

  def new

  end

  def create
    @office = Office.new(office_params)

    @office.save
    redirect_to @office
  end

  private
    def office_params
      params.require(:office).permit(:name)
    end
    
end
