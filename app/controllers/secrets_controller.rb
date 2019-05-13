class SecretsController < ApplicationController
  def show
    if !session[:name]
      redirect_to login_path
    else
      render :show
    end
  end

  private
end
