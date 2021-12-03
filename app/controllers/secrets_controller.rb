class SecretsController < ApplicationController
  before_action :logged_in

  def show
  end

  private

  def logged_in
    return redirect_to '/login' if session[:name].nil?
  end
end