class Car < ActiveRecord::Base
  belongs_to :car_type
  has_many :confirm_drivers
end
