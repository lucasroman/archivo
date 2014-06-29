class OfficesController < ApplicationController

  def index
    @offices = Office.all
  end

  def new
    @office = Office.new
  end

  def create
    @office = Office.new(office_params)

    if @office.save
      redirect_to @office
    else
      render 'new'
    end
  end

  def show
    @office = Office.find(params[:id])
  end

  private
    def office_params
      params.require(:office).permit(:name)
    end

end
