class Item < ActiveRecord::Base
	has_and_belongs_to_many :colors
	has_and_belongs_to_many :occasions
	has_and_belongs_to_many :styles
	belongs_to :brand
	belongs_to :item_type

	accepts_nested_attributes_for :colors, :occasions, :styles

	#name:string, internal_name:string, brand_id:integer, 
	#item_type_id:integer, occasion_id:integer, color_id:integer, 
	#style_id:integer, msrp:decimal, price:decimal, img_1:string, 
	#img_2:string, img_3:string, img_4:string, description:text, 
	#details:text, guide:text, stock:integer

	def self.get_favorites_by_type(type_id)
		Item.where(:item_type_id => type_id)
	end
end
