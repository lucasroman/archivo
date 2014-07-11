class FileRecordsController < ApplicationController

	def index
    @file_records = FileRecord.all
  end

  def new
    @file_record = FileRecord.new
  end


  def create
    @file_record = FileRecord.new(file_record_params)

    if @file_record.save
      redirect_to @file_record
    else
      'new'
    end
  end

  def show
    @file_record = FileRecord.find(params[:id])
  end

  def edit
    @file_record = FileRecord.find(params[:id])
  end

  def update
    @file_record = FileRecord.find(params[:id])

    if @file_record.update(file_record_params)
      redirect_to @file_record
    else
      render 'edit'
    end
  end

  def destroy
    @file_record = FileRecord.find(params[:id])
    @file_record.destroy

    redirect_to file_records_path
  end

  def archivate
    @file_record.archivate
  end

  private
    def file_record_params
      params.require(:file_record).permit(:title)
    end

end
