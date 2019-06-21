class EstatesController < ApplicationController

  def index
    @estates = Estate.all
  end

  def show
    @estate = Estate.find(params[:id])
  end

  def edit
  end

  def destroy
  end

  private

  def estate_params
    params.require(:estate).permit(:property_name, :rent, :address, :property_age, :content)
  end

end
