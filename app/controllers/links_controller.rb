class LinksController < ApplicationController
  def index

  end

  def new
    @link = Link.new
    @subs = Sub.all
  end

  def create
    @link = Link.new(params[:link])
    if @link.save
      redirect_to link_url(@link.id)
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
    @link = Link.find(params[:id])
  end

  def destroy

  end

end