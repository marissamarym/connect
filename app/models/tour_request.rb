class TourRequest < ActiveRecord::Base
  belongs_to :guide
  belongs_to :visit
end
