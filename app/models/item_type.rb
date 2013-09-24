class ItemType
	include ActiveModel::Model
	#has_one :item
	attr_accessor :name, :id
	def self.WATCH() return 0 end
	def self.BRACELET() return 1 end
	def self.HANDBAG() return 2 end

	def self.get_types
		[
			ItemType.new(id: ItemType.WATCH, name: "Watch"),
			ItemType.new(id: ItemType.BRACELET, name: "Bracelet"),
			ItemType.new(id: ItemType.HANDBAG, name: "Handbag")
		]
	end
end
