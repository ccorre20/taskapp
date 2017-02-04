class TasksController < ApplicationController

  before_filter :authorize

  def index
    @tasks = Task.where(user_id: session[:user_id])
  end
  
  def new 
    
  end

  def destroy
    t = Task.find(params[:id])
    t.destroy
    redirect_to '/mytasks', notice: "Task Destroyed" 
  end

  def update
    t = Task.find(params[:id])
    t.state = true
    t.save
    redirect_to '/mytasks', notice: "Task Marked as Done"
  end

  def create
    @t = Task.new
    @t.user_id = session[:user_id]
    @t.description = params[:description]
    @t.state = false
    @t.save
    redirect_to '/mytasks', notice: "Task Saved" 
  end


end
