class EstatesController < ApplicationController

  def index
    @estates = Estate.all
    @stations = Station.all
  end

  def new
    @estate = Estate.new
    @estate.stations.build
  end

  def create
    @estate = Estate.new(estate_params)
    if @estate.save
      redirect_to estates_path, notice: "保存しました！"
    else
      render 'new', notice: "エラーがあります！"
    end
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
    # ネスト化前の情報が取れているコード
    #params.require(:estate).permit(:property_name, :rent, :address, :property_age, :content)
    params.require(:estate).permit(:property_name, :rent, :address, :property_age, :content, stations_attributes: [:route_name, :station_name, :walking_minutes])
  end

end
