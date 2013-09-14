class CreateLeads < ActiveRecord::Migration
  def change
    create_table :leads do |t|
      t.string :email, required: true
      t.string :device

      t.timestamps
    end
  end
end
