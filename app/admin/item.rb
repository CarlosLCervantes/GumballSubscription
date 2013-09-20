ActiveAdmin.register Item do
	controller do
		def permitted_params
			params.permit(:item => [:name, :internal_name, :brand_id, :item_type_id, 
        :occasion_id, :color_id, :style_id, :msrp, :price, :img_1, :img_2, :img_3,
        :img_4, :description, :details, :guide, :stock])
		end
	end
	form do |f|
    f.inputs :name => "Basic" do
      f.input :name
      f.input :internal_name
      f.input :msrp
      f.input :price
      f.input :stock, :label => "# In Stock"
    end

    f.inputs :name => "Classification" do
      f.input :item_type_id, :as => :select, :collection => ItemType.all
      f.input :brand_id, :as => :select, :collection => Brand.all
      f.input :colors, :as => :check_boxes, :collection => Color.all
      f.input :occasions, :as => :check_boxes, :collection => Color.all
      f.input :styles, :as => :check_boxes, :collection => Color.all
    end

    f.inputs :name => "Details" do
    	f.input :description, :as => :text
      f.input :details, :as => :text
      f.input :guide, :as => :text
    end

    f.inputs :name => "Images" do
    	f.input :img_1#, :as => :file
      #f.input :img_2, :as => :file
      #f.input :img_3, :as => :file
      #f.input :img_4, :as => :file
    end

    f.actions
  end
end