class SessionsController < ApplicationController
  def new
  end

  def create
    return redirect_to '/login' if params[:name].nil? || params[:name] == ''
    session[:name] = params[:name]
    redirect_to '/'
  end

  def destroy
    session.delete(:name)
  end
end