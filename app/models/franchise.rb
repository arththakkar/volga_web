class Franchise < ActiveRecord::Base
  belongs_to :area
  has_many :franchise_areas
end
