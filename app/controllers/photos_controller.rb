class PhotosController < ApplicationController
  def index 
    @photos = Photo.all 
    render :index
  end 

  def create
    @photo = Photo.create(
      name: params[:name], 
      height: params[:height], 
      width: params[:width], 
    )
    render :show
  end 

  def show
    @photo = Photo.find_by(id:params[:id])
    render :show
  end 

  
end
