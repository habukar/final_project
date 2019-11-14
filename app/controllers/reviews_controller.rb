class ReviewsController < ApplicationController
    def create
        @order = Order.find(params[:order_id])
        @review = @order.reviews.create(review_params)
        redirect_to order_path(@order)
end

private
    def review_params
        params.require(:review).permit(:reviewer, :body)
    end
end    