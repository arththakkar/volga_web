class ConfirmFranchiseArea < ActiveRecord::Base
  belongs_to :confirm_franchise
  belongs_to :area
end
