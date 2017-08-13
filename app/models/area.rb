class Area < ActiveRecord::Base
	has_many :franchise_leaders
	has_many :franchises
	has_many :drivers
	has_many :franchise_leader_areas
	has_many :franchise_areas
	has_many :confirm_franchises
	has_many :confirm_drivers
	has_many :confirm_franchises, through: :confirm_franchise_areas
	has_many :confirm_franchise_areas
end
