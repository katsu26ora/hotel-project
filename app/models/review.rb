class Review < ApplicationRecord
 belongs_to :hotel
 validates :body, presence: true
  def short_description
    body[0, 3] + '...'
  end
end
