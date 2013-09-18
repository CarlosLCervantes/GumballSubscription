ActiveAdmin.register Occasion do
	controller do
		def permitted_params
			params.permit(:occastion => [:name])
		end
	end
end
