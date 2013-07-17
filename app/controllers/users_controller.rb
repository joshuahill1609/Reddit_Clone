class UsersController < ApplicationController

  def index
    @current_user = current_user
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      login_user!(@user)
      redirect_to users_url
    else
      flash[:errors] = @user.errors.full_messages
      render :new
    end
  end

  def edit

  end

  def update

  end

  def show
    @current_user = current_user
    @subs = Sub.all
  end

  def delete

  end
end
