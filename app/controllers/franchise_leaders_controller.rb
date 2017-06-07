class FranchiseLeadersController < ApplicationController
	def index
		@franchise_leaders = FranchiseLeader.all
	end
end