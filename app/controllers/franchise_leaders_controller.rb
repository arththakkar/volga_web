class FranchiseLeadersController < ApplicationController
	def index
		@franchise_leaders = FranchiseLeader.where('created_at > ?', date.midnight)
	end
end