module ApplicationHelper

	def get_image_url path
		"#{Settings.remote_image_root}/#{path}"
	end

	def get_image path, html_options = {}, options = {}
		if(Settings.use_remote_images)
			return image_tag(get_image_url(path), html_options)
		else
			return image_tag(path, html_options)
		end
	end

end
