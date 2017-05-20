class FranchiseLeader < ActiveRecord::Base
  belongs_to :area
  has_many :franchise_leader_areas
end
