module ApplicationHelper
		def loginbox_dynamic_height
				return "height: 227px;" if params[:controller] == "user_sessions" &&	params[:action] == "new"
				return "height: 285px;" if params[:controller] == "user_sessions" &&	params[:action] == "create"
		end
end
