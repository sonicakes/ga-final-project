require 'rails_helper'

RSpec.describe BookingsController, type: :controller do

  describe "GET index" do
    it "should pass @bookings object to the view"
  end

  describe "GET new" do
    it 'should pass a @tour object to the view'
    # if the customer is logged in, this should be an object
    # if its a brand new customer, it should be nil
    it 'should pass a @customer variable to the view'
  end

describe "GET show" do
  it 'should pass @booking object to the view'
end

  describe "POST create" do
    describe 'A booking with correct information and successful payment' do
      it 'should redirect to booking#show page'
      # TODO it should show a success message - thanks for booking
    end
    describe 'A booking with correct information, but payment fails' do
      it 'should redirect to booking#show'
      # TODO the page should prompt them to try payment again
      # thanks for booking, but we couldn't process your payment...
    end
    describe 'A booking with incorrect information' do
      it 'should redirect to booking#new'
      # TODO they should be shown an error message
    end
  end

end
