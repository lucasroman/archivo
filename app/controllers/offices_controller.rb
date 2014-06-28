class OfficesController < ApplicationController

  def index

  end

  def new
    @office = Office.new
  end

  def create
    @office = Office.new(office_params)

    @office.save
    redirect_to @office
  end

  def show
    @office = Office.find(params[:id])
  end

  private
    def office_params
      params.require(:office).permit(:name)
    end

end
