class Area < ActiveRecord::Base
	has_many :franchise_leaders
	has_many :franchises
	has_many :drivers
	has_many :franchise_leader_areas
	has_many :franchise_areas
end
