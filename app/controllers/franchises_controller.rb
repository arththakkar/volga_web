class FranchisesController < ApplicationController
	def index
		@franchises = Franchise.all
	end
end