class Visit < ActiveRecord::Base
  belongs_to :prospie
  belongs_to :school
  has_many :tour_requests
end
