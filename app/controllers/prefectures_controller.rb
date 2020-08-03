class PrefecturesController < ApplicationController
  def index
    @region = Region.all
    @q = Prefecture.ransack(params[:q])
    @prefectures = @q.result(distinct: true)
  end
  
  def show
    @prefecture = Prefecture.find(params[:id])
     
     @hotel = @prefecture.hotels
  end


end
