class FranchiseArea < ActiveRecord::Base
  belongs_to :franchise
  belongs_to :area
end
