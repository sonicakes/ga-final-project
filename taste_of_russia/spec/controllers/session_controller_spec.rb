require 'rails_helper'

RSpec.describe SessionController, type: :controller do


  # need a test:
  # - when we post to Session create, if details are correct, redirect tour#index
  # if details are not correct, redirect to session#new

  # when they logout - so when they GET session#destro redirect to session#new

  # Processing login form
  describe "POST create" do

    describe "Customer entered valid email and password" do

      before do

        customer = Customer.create(
          :password => "12345",
          :first_name => "alice",
          :email => "alice@example.com",
          :last_name => "Smith",
          :phone_number => "12-34-56"
        )

        post :create, :params => {
          :email => 'alice@example.com',
          :password => '12345'
        }
      end

      it "should redirect to tours#index - all Tours" do
        expect(response).to redirect_to :tours
      end

      it 'current_user should be a Customer object'
      it 'current_user email should be alice@example.com'

    end

    describe "Customer entered invalid email or password" do

      before do
        post :create, :params => {
          :email => 'this-does-not-exist@example.com',
          :password => 'blah'
        }
      end

      it "should redirect to session#new - login form" do
        expect(response).to redirect_to :action => :new
      end

      it "current_user should be nil"
    end

  end

  # Logout link
  describe "GET destroy" do

    before do
      get :destroy
    end

    it "should redirect to session#new - login form" do
      expect(response).to redirect_to :action => :new
    end

    it "current_user should be nil"
  end

end
