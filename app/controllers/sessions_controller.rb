class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = login params[:email], params[:password]
    if user
      redirect_back_or_to home_url_for(user), :notice => "Logged in!"
    else
      flash.now.alert = "Email or password was invalid."
      render :new
    end
  end
  
  def destroy
    logout
    redirect_to login_url, :notice => "Logged out."
  end
end
