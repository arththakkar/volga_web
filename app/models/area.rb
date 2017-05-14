class Area < ActiveRecord::Base
	has_many :franchise_leaders
	has_many :franchises
	has_many :drivers
end
