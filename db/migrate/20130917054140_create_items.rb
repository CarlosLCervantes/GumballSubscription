class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name, :null => false
      t.string :internal_name
      t.integer :brand_id, :null => false
      t.integer :item_type_id, :null => false
      #t.integer :occasion_id, :null => false
      #t.integer :color_id, :null => false
      #t.integer :style_id, :null => false
      t.decimal :msrp
      t.decimal :price, :null => false
      t.string :img_1, :null => false
      t.string :img_2
      t.string :img_3
      t.string :img_4
      t.text :description, :null => false
      t.text :details
      t.text :guide
      t.integer :stock, :default => 0
      t.boolean :active, :default => true
      t.timestamps
      #TODO Add Indexes
    end
  end
end