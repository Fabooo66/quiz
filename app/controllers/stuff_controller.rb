class StuffController < ApplicationController

  def index
    @stuff = Stuff.all
  end

  def new
    @stuff = Stuff.new   
  end

  def create
    Stuff.create(place_params)
    redirect_to root_path
  end

  def show
    # @place = Place.find(params[:id])
    @comment = Comment.new
  end

  private

  def place_params
    params.require(:place).permit(:name, :description, :address)
  end

end
