require 'rails_helper'

RSpec.describe CustomersController, type: :controller do

describe "GET show page" do

      before do
        customer = Customer.create(
          :password => "bob12345",
          :first_name => "Robert",
          :email => "bob-smith@example.com",
          :last_name => "Smith",
          :phone_number => "12-34-56"
        )
        get :show, :params => { :id => customer.id }
      end

      it 'should pass a @customer object to the view' do
        expect(assigns(:customer)).to be
      end
end

end
