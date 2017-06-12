class FranchisesController < ApplicationController
	def index
		date = Date.parse("2017/06/07")
		@franchises = Franchise.where('created_at > ?', date.midnight)
	end
end