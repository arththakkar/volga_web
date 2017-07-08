module ApplicationHelper
	def active_class(path)
		puts "===#{request.path}===#{path}"
		"active" if request.path == path
	end
end
