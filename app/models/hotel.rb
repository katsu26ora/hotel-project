class Hotel < ApplicationRecord
  mount_uploader :picture, PictureUploader
  belongs_to :prefecture
  has_many :reviews
  has_many :reservations
  has_many :pictures

  belongs_to :user
  has_many :likes
  has_many :liked_users, through: :likes, source: :user

  def review_average
    reviews.average(:value).floor(2) if reviews.present?
  end
  
end
 



             