class EstatesController < ApplicationController
  before_action :set_estate, only:[:show, :edit, :update, :destroy]

  def index
    @estates = Estate.all
    @stations = Station.all
  end

  def new
    @estate = Estate.new
    2.times { @estate.stations.build }

  end

  def create
    @estate = Estate.new(estate_params_new)
    if @estate.save
      redirect_to estates_path, notice: "保存しました！"
    else
      #バリデーションがかかると複数の入力欄が消えてしまうので、再度インスタンスをbuildしている。
      2.times { @estate.stations.build }
      render 'new', notice: "エラーがあります！"
    end
  end

  def show
    #set_estate
  end

  def edit
    # (Station::FORM - @estate.stations.count).times {@estate.stations.build}
    @estate.stations.build
    #set_estate
  end

  def update
    #set_estate
    if @estate.update(estate_params)
      redirect_to estates_path, notice: "更新しました。"
    else
      render 'edit'
    end
  end

  def destroy
    #set_estate
    @estate.destroy
    redirect_to estates_path, notice:"ブログを削除しました！"
  end

  private

  def estate_params_new
    params.require(:estate).permit(:property_name, :rent, :address, :property_age, :content, stations_attributes: [:route_name, :station_name, :walking_minutes])
  end

  def estate_params
    params.require(:estate).permit(:property_name, :rent, :address, :property_age, :content, stations_attributes: [:id, :route_name, :station_name, :walking_minutes])
  end

  def set_estate
    @estate = Estate.find(params[:id])
  end

end
