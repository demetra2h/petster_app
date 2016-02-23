class PicturesController < ApplicationController

def index
  @pictures = Picture.all
end

def new
  @picture = Picture.new
end

def create
  @picture = Picture.new(self.picture_params)

  if @picture.save
    redirect_to pictures_path(anchor: @picture.fragment_id)
  else
    render :new
  end
end

def edit
  @picture = Picture.find(params[:id])
end

def update
  @picture = Picture.find(params[:id])
  if @picture.update(self.picture_params)
    redirect_to pictures_path(anchor: @picture.fragment_id)
  else
    render :edit
  end
end

def destroy
  @picture = Picture.find(params[:id])
  @picture.destroy

  flash[:message] = "'#{@picture.title}' removed!"
  redirect_to pictures_path
end

def picture_params
  params.require(:picture).permit(
    :imgur_id,
    :posted_on,
    :title,
    :description
    )
  end
end
