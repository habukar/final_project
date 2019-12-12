require 'rails_helper.rb'

feature "Customer creates an order" do
    scenario "Customer successfully navigates from the Listing orders page to the New Order page"  do
        visit orders_path
        expect(page).to have_content("Listing orders")
        click_button('New order')
        expect(page).to have_content("New Order")
       
    end
end