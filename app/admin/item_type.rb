ActiveAdmin.register ItemType do
	controller do
		def permitted_params
			params.permit(:item_type => [:name])
		end
	end
end
