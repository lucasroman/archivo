class StepsController < ApplicationController
  
  def create
    @file_record = FileRecord.find(params[:file_record_id])
    @file_record.steps.create(file_record_params)

    redirect_to file_record_path(params[:file_record_id])
  end

  private
    def file_record_params
      params.require(:step).permit(:office_id, :person_id)
    end

end