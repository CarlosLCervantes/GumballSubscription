class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_id, :null => false
      t.integer :item_id, :null => false
      t.datetime :shiped_date
      t.datetime :est_ship_date
      t.decimal :ship_cost
      t.string :tracking_number

      t.timestamps
    end
    add_index :orders, :user_id
    add_index :orders, :item_id
  end
end
