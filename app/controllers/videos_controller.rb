class VideosController < ApplicationController
  def new
    
  end

  def create
    Video.create(params[:video])
    redirect_to root_path
  end
end
