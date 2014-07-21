class TourRequest < ActiveRecord::Base
  belongs_to :guide
  belongs_to :visit
  has_many :tours
  self.inheritance_column = nil
end
