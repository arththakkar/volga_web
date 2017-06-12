class FranchisesController < ApplicationController
	def index
		@franchises = Franchise.where('created_at > ?', date.midnight)
	end
end