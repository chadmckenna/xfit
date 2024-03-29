class Clients::UsersController < Clients::ClientsController
  def new
    @user = User.new
  end
  
  def create
    @user = User.new params[:user]
    if @user.save
      redirect_to root_url, :notice => "Signed up!"
    else
      render :new
    end
  end
  
  def edit
    @user = User.find(params[:id])
  end
end
