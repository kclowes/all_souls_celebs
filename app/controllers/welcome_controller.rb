class WelcomeController < ApplicationController

  def index
    @celebrants = Celebrant.all
    @tasks = Task.all
  end

end