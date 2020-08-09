class Like < ApplicationRecord
  belongs_to :hotel
  belongs_to :user
  validates_uniqueness_of :hotel_id, scope: :user_id
end
 