class School < ActiveRecord::Base
  has_many :guides
  validates_formatting_of :email, using: :email
end
