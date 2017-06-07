class Driver < ActiveRecord::Base
  belongs_to :area
  belongs_to :car
end
