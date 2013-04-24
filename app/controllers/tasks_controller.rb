class TasksController < ApplicationController
  def index
  	@tasks = Task.all
  	@task = Task.new
  end

  def create
  	Task.create(params[:task])
  	redirect_to root_path
  end	
end
