class SessionsController < ApplicationController

  def new
  end

  def create
    # @user = verify_user!(params[:user][:username],
#                          params[:user][:password])

    @user = User.find_by_username(params[:user][:username])
    if @user
      login_user!(@user)
      redirect_to user_url(@user.id)
    else
      flash[:errors] = "Invalid password/username"
      render :new
    end
  end

  def show

  end

  def destroy
    @user = current_user
    if @user.nil?
      redirect_to new_session_url
      return
    else
      logout_user!(@user)
      redirect_to new_session_url
    end
  end

end

