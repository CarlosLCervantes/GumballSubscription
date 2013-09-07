class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_hash
      t.string :password_salt
      t.string :password_reset_token
      t.string :password_reset_sent_at
      t.string :stripe_id
      t.date :birthday
      t.string :uid
      t.string :provider

      t.timestamps
    end
  end
end
