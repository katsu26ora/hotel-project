class Prefecture < ApplicationRecord
  mount_uploader :picture, PictureUploader
  has_many :hotels
  belongs_to :region
end
