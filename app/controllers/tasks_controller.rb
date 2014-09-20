class TasksController < ApplicationController

  def new
    @task = Task.new
  end

  def create
    @task = Task.create(name: params[:task][:name])
    redirect_to tasks_path
  end

  def index
    @task = Task.all
  end
end