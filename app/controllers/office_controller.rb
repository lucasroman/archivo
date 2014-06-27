class OfficeController < ApplicationController

  def index
    @offices = Office.all.to_a
  end

  def new
    @office = Office.new
  end

  def create
    @office = Office.new(office_params)
  end

  def edit
    @office = Office.find(params[:id])
  end

  def update
    @office = Office.find(params[:id])

    if @office.update(office_params)
      redirect_to @office
    else
      render 'edit'
  end

  def delete
  end

  private
    def office_params
      params.require(:office).permite(:name))
    end

end
