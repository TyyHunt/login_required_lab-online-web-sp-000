class SessionsController < ApplicationController
  def new
  end

  def create
    if !params[:name] || params[:name].empty?
      redirect_to login_path
    elsif session[:name]
      redirect_to login_path
    else
      session[:name] = params[:name]
    end
  end

  def destroy
    session.delete :name
  end
end
