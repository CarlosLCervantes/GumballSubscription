class Lead < ActiveRecord::Base

	validates_presence_of :email, :message => "can't be blank!"
	validates_uniqueness_of :email, :allow_blank => false, :allow_nil => false, :message => "is already signed up!"
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, message: "is not a valid e-mail!"
end
