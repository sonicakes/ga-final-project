require 'rails_helper'

RSpec.describe BookingsController, type: :controller do

  describe "GET index" do
    before do
      get :index
    end

    it "should pass @bookings object to the view" do
        expect(assigns(:bookings)).to be
    end
  end

  describe "GET new" do
    before do
        tour = Tour.create(
          :title => "St Petersburg to Moscow",
          :description => "Foo",
          :price => 500
        )
      get :new, :params => { :tour_id => tour.id}
    end

    it 'should pass a @tour object to the view' do
      expect(assigns(:tour)).to be
    end
    # TODO:if the customer is logged in, this should be an object
    # if its a brand new customer, it should be nil

    # it 'should pass a @customer variable to the view' do
    #     expect(assigns(:customer)).to be
    # end
  end

describe "GET show" do

# TODO create a booking, customer, tour object for this to work

    before do


        tour = Tour.create(
          :title => "St Petersburg to Moscow",
          :description => "Foo",
          :price => 500
        )


        customer = Customer.create(
          :password => "bob12345",
          :first_name => "Robert",
          :email => "bob-smith@example.com",
          :last_name => "Smith",
          :phone_number => "12-34-56"
        )

        booking = Booking.create(
          :payment_reference => "12345",
          :start_date => "2018-09-24",
          :tour_id => tour.id,
          :customer_id => customer.id
        )

      get :show, :params => { :id => booking.id}
    end

  it 'should pass @booking object to the view' do
    expect(assigns(:booking)).to be
  end
end

  describe "POST create" do

    describe 'A booking with an existing customer and successful payment'
    describe 'A booking with an existing customer and payment fails'

    describe 'A booking with a new customer and successful payment' do

      before do

        tour = Tour.create(
          :title => "St Petersburg to Moscow",
          :description => "Foo",
          :price => 500
        )

        post :create, :params => {
          :tour_id => tour,
          :start_date => '2018-09-24',
          :customer_first_name => 'Rowik',
          :customer_last_name =>'Boikov',
          :customer_phone_number => "123456",
          :customer_email => "test@example.com",
          :customer_password => "chicken"
        }

      end

      it 'should redirect to booking#show page' do
        expect(response).to redirect_to Booking.last
      end
      # TODO it should show a success message - thanks for booking
    end

    describe 'A booking with a new customer, but payment fails' do

      before do

        tour = Tour.create(
          :title => "St Petersburg to Moscow",
          :description => "Foo",
          :price => 500
        )

        post :create, :params => {
          :tour_id => tour,
          :start_date => '2018-09-24',
          :customer_first_name => "Rowik",
          :customer_last_name =>'Boikov',
          :customer_phone_number => "123456",
          :customer_email => "test@example.com",
          :customer_password => "chicken"
        }
      end

      it 'should redirect to booking#show' do
        expect(response).to redirect_to Booking.last
      end
      # TODO the page should prompt them to try payment again
      # thanks for booking, but we couldn't process your payment...
    end

    describe 'A booking with a new customer, but customer fields are empty' do

      before do

        tour = Tour.create(
          :title => "St Petersburg to Moscow",
          :description => "Foo",
          :price => 500
        )

        post :create, :params => {
          :tour_id => tour,
          :start_date => '2018-09-24',
          :customer_first_name => '',
          :customer_last_name =>'',
          :customer_phone_number => '',
          :customer_email => '',
          :customer_password => ''
        }
      end

      it 'should redirect to booking#new' do
        expect(response).to redirect_to :action => :new
      end
      # TODO they should be shown an error message
    end
  end

end
