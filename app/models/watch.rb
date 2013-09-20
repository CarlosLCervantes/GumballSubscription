class Watch
	include ActiveModel::Model

	def self.get_favorites
		Item.get_favorites_by_type(ItemType.WATCH)
	end

end