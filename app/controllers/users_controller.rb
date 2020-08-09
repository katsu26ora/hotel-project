class UsersController < ApplicationController
  has_many :hotels, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :liked_hotels, through: :likes, source: :hotel
  def already_liked?(hotel)
    self.likes.exists?(hotel_id: post.id)
  end
end
