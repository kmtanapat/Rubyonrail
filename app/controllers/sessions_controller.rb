class SessionsController < ApplicationController
  def new
  end
  def index
    redirect_to login_path
  end
  def create
    user = User.find_by_user_name(params[:user_name])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to articles_path, notice: "Logged in roles"
    else
      flash.now[:alert] = "Username or password is invalid"
      render "new"
    end
  end
  def destroy
    session[:user_id] = nil
    redirect_to login_path, notice: "Logged out!"
  end
end