ActiveAdmin.register Style do
	controller do
		def permitted_params
			params.permit(:style => [:name])
		end
	end
end
