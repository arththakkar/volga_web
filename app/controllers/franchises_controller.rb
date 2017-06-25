class FranchisesController < ApplicationController
	def index
		date = Date.parse("2017/06/17")
		@franchises = Franchise.where('created_at > ?', date.midnight)
	end
end