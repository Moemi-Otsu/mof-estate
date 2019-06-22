class EstatesController < ApplicationController

  def index
    @estates = Estate.all
    @stations = Station.all
  end

  def new
    @estate = Estate.new
  end

  def create
    Estate.create(estate_params)
    redirect_to new_estate_path
  end

  def show
    @estate = Estate.find(params[:id])
  end

  def edit
    @estate = Estate.find(params[:id])
  end

  def destroy
  end

  private

  def estate_params
    params.require(:estate).permit(:property_name, :rent, :address, :property_age, :content)
  end

end
