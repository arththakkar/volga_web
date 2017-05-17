class Api::AreasController < ApplicationController
	def index
		@areas = Area.all.order(:name)
	end
end