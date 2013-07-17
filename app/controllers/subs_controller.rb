class SubsController < ApplicationController
  def index
    @subs = Sub.all
    @current_user = User.find_by_session_token(session[:session_token])
  end

  def new
    @sub = Sub.new
    @current_user = current_user
  end

  def create
    @current_user = current_user
    @sub = Sub.new(params[:sub])
    if @sub.save
      redirect_to subs_url
    else
      flash[:notice] = "Could not save."
      render :new
    end
  end

  def edit

  end

  def update

  end

  def show
    @sub = Sub.find(params[:id])
    @links = Link.all
  end

  def delete

  end
end