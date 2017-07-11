module ApplicationHelper
	def active_class(path)
		"active" if request.path == path
	end

	def current_user_area
		current_user.confirm_franchise.try(:area)
	end

	def is_franchise_area?(area_id)
		current_user.confirm_franchise.area.id == area_id.to_i
	end
end
