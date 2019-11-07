class OrdersController < ApplicationController
    def new
    end
<<<<<<< HEAD
     
     def create
         @order = Order.new(order_params)
         
         @order.save 
         redirect_to @order
     end
     
     def show
                  @order = Order.find(params[:id])
     end
=======
>>>>>>> parent of 2bbfc4c... Set up create action
end 

    private
    def order_params
        params.require(:order).permit(:title, :text)
    end


