class Tour < ActiveRecord::Base
  belongs_to :tour_request
  has_one :rating
end
