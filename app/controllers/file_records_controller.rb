class FileRecordsController < ApplicationController

	def index
    @file_records = FileRecord.all
  end

  def new
    @file_record = FileRecord.new
  end

  def create
    @file_record = FileRecord.new(record_params)
    @office = Office.where(name: 'Mesa de entrada').first!
    @step = Step.new

    if @file_record.save

      #step = Step.new(record_id: @record.id, office: @office)
      #step.save
      redirect_to @file_record
    else
      'new'
    end
  end

  def show
    @file_record = FileRecord.find(params[:id])
  end

  private
    def record_params
      params.require(:file_record).permit(:title)
    end

end
