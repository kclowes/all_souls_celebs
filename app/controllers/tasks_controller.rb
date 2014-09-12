class TasksController < ApplicationController

  def new
    @task = Task.new
  end

  def create
    @task = Task.create(name: params[:task][:name])
    redirect_to root_path
  end
end