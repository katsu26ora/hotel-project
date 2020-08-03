class Hotel < ApplicationRecord
  mount_uploader :picture, PictureUploader
  belongs_to :prefecture
  has_many :reviews
  has_many :reservations
  has_many :pictures


  def review_average
    reviews.average(:value).floor(2) if reviews.present?
  end
  
end




             