class SessionsController < ApplicationController

  def new
  end

  def create
    puts "----NAME----"
    puts params[:name]
    puts "----NAME----"
    puts "----PWPW----"
    puts params[:pw]
    puts "----PWPW----"
    user = User.find_by name: params[:name]
    if user && user.pw.to_s == params[:pw]
      session[:user_id] = user.id
      puts "alls good"
      redirect_to '/mytasks', notice: "Logged in!"
    else
      flash[:error] = "Bad Username or Password"
      puts "you done goofed"
      redirect_to '/'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end

end
