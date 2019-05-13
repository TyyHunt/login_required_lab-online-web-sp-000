class SessionsController < ApplicationController
  def new
  end

  def create
    if !session[:name] || params[:name].empty?
      redirect_to login_path
    elsif session[:name]
      redirect_to login_path
    else
      session[:name] = params[:name]
    end
  end

  def destroy
    session.destroy :name
  end
end
