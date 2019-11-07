class OrdersController < ApplicationController
    def new
    end

end 

    private
    def order_params
        params.require(:order).permit(:title, :text)
    end


