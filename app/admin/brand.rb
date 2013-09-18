ActiveAdmin.register Brand do
	controller do
		def permitted_params
			params.permit(:brand => [:name, :description])
		end
	end
end
