class PicturesController < ApplicationController

def index
  @pictures = Picture.all
end

def show
  @picture = Picture.find(params[:id])
end

def new
  @picture = Picture.new
end

def create
  @picture = Picture.new(picture_params)
  @picture.user = current_user
  if @picture.save
    redirect_to :pictures
  else
    render :new
  end
end

def edit
  @picture = Picture.find(params[:id])
end

def update
  @picture = Picture.find(params[:id])

  if @picture.update_attributes(picture_params)
    redirect_to :pictures
  else
    render :edit
  end
end

def destroy
  @picture = Picture.find(params[:id])
  if @picture.user = current_user
    @picture.destroy
  end
  redirect_to pictures_path
end

private
  def picture_params
    params.require(:picture).permit(:imgur_id, :posted_on, :title, :description, :image)
  end
end
