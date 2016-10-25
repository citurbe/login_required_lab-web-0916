class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name] == nil || params[:name] == ""
      redirect_to root_path
    else
      session[:name] = params[:name]
      redirect_to 'application#hello'
    end
  end

  def show
    if !!session[:name] == false
      redirect_to new_session_path
    else
      render :show
    end

  end

  def destroy
    session.delete :name if !!session[:name]
    redirect_to new_session_path
  end




end
