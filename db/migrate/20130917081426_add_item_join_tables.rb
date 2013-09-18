class AddItemJoinTables < ActiveRecord::Migration
  def self.up
    create_table :colors_items, :id => false do |t|
        t.references :item
        t.references :color
    end
    add_index :colors_items, [:item_id, :color_id]
    add_index :colors_items, [:color_id, :item_id]
    #########################
    create_table :items_styles, :id => false do |t|
        t.references :item
        t.references :style
    end
    add_index :items_styles, [:item_id, :style_id]
    add_index :items_styles, [:style_id, :item_id]
    #########################
    create_table :items_occasions, :id => false do |t|
        t.references :item
        t.references :occasions
    end
    add_index :items_occasions, [:item_id, :occasions_id]
    add_index :items_occasions, [:occasions_id, :item_id]
  end

  def self.down
    drop_table :colors_items
    drop_table :items_styles
    drop_table :items_occasions
  end
end