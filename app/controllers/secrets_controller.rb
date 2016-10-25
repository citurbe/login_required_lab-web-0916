class SecretsController < ApplicationController


  def show
    redirect_to root_path if !!session[:name] == false
  end
end
