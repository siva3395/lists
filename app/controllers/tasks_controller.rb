class TasksController < ApplicationController
  def new
    @task = Task.new
    respond_to do |format|
      format.js { render :layout=>false }
    end
  end
  
  def index
    
  end
  
  def create
    @task = Task.new(params[:task])
    @task.save
    respond_to do |format|
      format.js { render :layout=>false }
    end
  end
end
