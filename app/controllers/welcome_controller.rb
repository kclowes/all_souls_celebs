class WelcomeController < ApplicationController

  def index
    @celebrants = Celebrant.all
  end

end