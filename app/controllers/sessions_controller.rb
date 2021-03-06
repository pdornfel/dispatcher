class SessionsController < ApplicationController

  def create
    binding.pry
    user = User.from_omniauth(env['omniauth.auth']) 
    session[:user_id] = user.id
    redirect_to root_url, notice: 'Signed In!'
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: 'Signed Out!'
  end

  def failed
    redirect_to root_url, error: 'Failed to authenticate'
  end

end
