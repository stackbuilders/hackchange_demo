class VideosController < ApplicationController
  def new

  end

  def edit
    @video = Video.find(params[:id])
  end

  def update
    @video = Video.find(params[:id])
    @video.update_attributes(params[:video])
    redirect_to root_path
  end

  def create
    Video.create(params[:video])
    redirect_to root_path
  end

  def destroy
    Video.find(params[:id]).destroy
    redirect_to root_path
  end
end
