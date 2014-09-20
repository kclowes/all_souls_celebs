class DutiesController < ApplicationController

  def new
    @celebrant = Celebrant.where(params[:celebrant_id])
    @duties = Duty.new
  end

  def create
    @celebrant = Celebrant.where(params[:celebrant_id])
    params[:duty][:task_id].each do |id|
      if id != ""
        @duty = Duty.create(celebrant_id: params[:celebrant_id], task_id: id)
      end
    end
    if @duty.save
      redirect_to root_path
    end
  end

end