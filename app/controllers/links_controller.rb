class LinksController < ApplicationController
  def index

  end

  def new
    @link = Link.new
    @subs = Sub.all
  end

  def create
    @link = Link.new(params[:link])
    @link.user_id = current_user.id
    if @link.save
      redirect_to link_url(@link.id)
    else
      flash[:notice] = "Could not save."
      render :new
    end
  end

  def edit
    @link = Link.find(params[:id])
  end

  def update
    @link = Link.find(params[:id])
    if @link.update_attributes(params[:link])
      redirect_to links_url(@link)
    else
      render :edit
    end
  end

  def show
    @link = Link.find(params[:id])
  end

  def destroy

  end

end