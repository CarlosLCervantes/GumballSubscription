ActiveAdmin.register Item do
	controller do
		def permitted_params
			params.permit(:item => [:name])
		end
	end
	form do |f|
    f.inputs "Basic" do
      f.input :name
      f.input :internal_name
      f.input :msrp
      f.input :price
      f.input :stock, :label => "# In Stock"
    end

    f.inputs "Classification" do
      f.input :item_type_id, :as => :select, :collection => ItemType.all
      f.input :brand_id, :as => :select, :collection => Brand.all
      f.input :colors, :as => :check_boxes#, :collection => Brand.all
    end

    f.inputs "Details" do
    	f.input :description, :as => :text
      f.input :details, :as => :text
      f.input :guide, :as => :text
    end

    f.inputs "Images" do
    	f.input :img_1, :as => :file
      f.input :img_2, :as => :file
      f.input :img_3, :as => :file
      f.input :img_4, :as => :file
    end

    f.actions
  end
end