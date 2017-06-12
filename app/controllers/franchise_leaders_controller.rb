class FranchiseLeadersController < ApplicationController
	def index
		date = Date.parse("2017/06/07")
		@franchise_leaders = FranchiseLeader.where('created_at > ?', date.midnight)
	end
end