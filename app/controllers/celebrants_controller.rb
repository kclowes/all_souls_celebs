class CelebrantsController < ApplicationController
  def new
    @celebrant = Celebrant.new
  end

  def create
    @celebrant = Celebrant.create(name: params[:celebrant][:name])
    redirect_to root_path
  end
end