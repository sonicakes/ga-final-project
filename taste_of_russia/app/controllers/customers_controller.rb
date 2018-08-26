class CustomersController < ApplicationController
  before_action :authorize_customer
  def show
     @customer = Customer.find params[:id]
  end
end
