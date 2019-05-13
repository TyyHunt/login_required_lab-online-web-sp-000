class SessionsController < ApplicationController
  def new
  end

  def create
    if !session[:name] || params[:name].empty?
      redirect_to '/login'
    elsif session[:name]
      redirect_to '/'
    else
      session[:name] = params[:name]
    end
  end

  def destroy
    session.destroy :name
  end
end
