require 'rails_helper'

RSpec.describe CustomersController, type: :controller do
  describe 'GET show page' do
    before do
      customer = Customer.create(
        password: 'bob12345',
        email: 'bob-smith@example.com'
      )
      get(:show,
        params: { id: customer.id },
        session: { customer_id: customer.id}
      )
    end

    it 'should pass a @customer object to the view' do
      expect(assigns(:customer)).to be
    end
  end
end
