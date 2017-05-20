class FranchiseLeaderArea < ActiveRecord::Base
  belongs_to :franchise_leader
  belongs_to :area
end
