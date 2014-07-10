class Guide < ActiveRecord::Base
  belongs_to :user
  belongs_to :school
  has_many :tour_requests
end
