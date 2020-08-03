class HotelsController < ApplicationController

  def index
    @prefecture = Prefecture.all
    @q = Hotel.ransack(params[:q])
    @hotels = @q.result(distinct: true).sort_by {|hotel| hotel.review_average}.reverse
  end
  def show
    @hotel = Hotel.find(params[:id])
    @prefecture = Prefecture.all
    @picture = @hotel.pictures
  end  

end
