class OfficesController < ApplicationController

  def index

  end

  def new

  end

  def create
    render html: params[:office].inspect
  end

end
