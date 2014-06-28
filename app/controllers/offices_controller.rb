class OfficesController < ApplicationController

  def index

  end

  def new

  end

  def create
    @office = Office.new(params[:office])

    @office.save
    redirect_to @office
  end

end
