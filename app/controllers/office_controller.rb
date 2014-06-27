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
  end

  def update
  end

  def delete
  end

  private
    def office_params
      params.require(:office).permite(:name))
    end
    
end
