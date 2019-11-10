class OrdersController < ApplicationController
    def new
    end

     def create
      @order = Order.new(order_params)
     
      @order.save
      redirect_to @order
        
     end
    
    def show 
        @order = Order.find(params[:id])
    end
end


private
def order_params 
    params.require(:order).permit(:name, :request)
end
