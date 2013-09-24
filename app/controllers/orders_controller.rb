class OrdersController < ApplicationController
	before_action :set_order, only: [:show, :edit, :update, :destroy]

	def create
    respond_to do |format|
    	if current_user
    		@item = Item.find(params[:item_id])

	      if @order.setup!(item)
	        format.html { redirect_to dashboard_path, notice: 'Order was successfully created.' }
	        format.json { render controller: "dashboard", action: 'index', status: :created, location: dashboard_path }
	      else
	        format.html { render action: 'new' }
	        format.json { render json: @order.errors, status: :unprocessable_entity }
	      end
	    else
	    	format.html { redirect_to new_user_access_path, notice: 'Request Access to continue' }
	      #format.json { render controller: "user", action: 'access',
	      #	status: :redirected, location: new_user_access_url}
	      #format.json { render :js => "window.location = '/jobs/index'" }
	      format.json { render json: {:location => new_user_access_url}, status: :created }
	      
			end
    end
	end

	private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @item = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params[:order]
    end
end
