class Reservation < ApplicationRecord
  belongs_to :hotel
  validates :name, presence: true
  validates :mail, presence: true
  validates :hotelin, presence: true
  validates :hotelout, presence: true
  validates :people, presence: true
end
