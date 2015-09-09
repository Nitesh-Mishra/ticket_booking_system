class SessionsController < ApplicationController

def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    session[:email]= user.email
    redirect_to root_path
  end

  def destroy
    session[:user_id] = nil
    session[:email]= nil
    redirect_to root_path
  end
  
end
