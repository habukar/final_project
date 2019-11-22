class OrdersController < ApplicationController
    def new
        @order = Order.new
    end

     def create
      @order = Order.new(order_params)
      @order.user = current_user
      
      
    if @order.save
    
     redirect_to @order
    else
        render 'new'
    end
    
     end
    
    def show 
        @order = Order.find(params[:id])
    end
    
    def index
        @orders = Order.all
    end
    
    def edit
        @order = Order.find(params[:id])
    
end

    def update
        @order = Order.find(params[:id])
        
            if @order.update(order_params)
            redirect_to @order
        else
             render 'edit'
        end
    end
    
    def destroy
        @order = Order.find(params[:id])
        @order.destroy
        redirect_to orders_path
    end
end
private
def order_params 
    params.require(:order).permit(:name, :request)
end
