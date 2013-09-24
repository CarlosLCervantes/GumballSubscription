class LandingController < ApplicationController
	layout 'landing'
	def index
		@sign_up_path = current_user ? dashboard_path : items_path
	end
end