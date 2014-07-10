class School < ActiveRecord::Base
  has_many :guides
  validates_formatting_of :email, using: :email
  validates_formatting_of :phone, using: :us_phone
  validates_formatting_of :website, using: :url
  validates_formatting_of :details_url, using: :url
end
