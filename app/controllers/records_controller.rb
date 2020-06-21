class RecordsController < ApplicationController
  def create
    record_params
    redirect_to edit_calendar_path(1)
  end

  private
  def record_params
    params.require(:record).permit(:red,:green,:blue)
  end
end
