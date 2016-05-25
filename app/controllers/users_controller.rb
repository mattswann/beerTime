class UsersController < ApplicationController

def index
  @users = User.all
end

def new
  @user = User.new
end

def created
  @user = User.new
  @user.name = params[:name]
  @user.email = params[:email]
  @user.password = params[:password]
  @user.password_confirmation = params[:password_confirmation]

  if @user.save
    session[:user_id] = @user.id
    redirect_to root_path
  else
    render :new
  end

end



end
