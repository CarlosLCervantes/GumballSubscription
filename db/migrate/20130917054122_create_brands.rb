class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.string :name, :null => false
      t.string :description

      t.timestamps
    end
  end
end
