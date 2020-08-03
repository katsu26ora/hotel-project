class Picture < ApplicationRecord
	mount_uploader :pic, PictureUploader
	belongs_to :hotel
end
