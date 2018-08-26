class SessionController < ApplicationController
  def destroy
    redirect_to :login
  end

  def create

    customer = Customer.find_by :email => params[:email]
    if customer.present? && customer.authenticate(params[:password])
      # If a user record with the entered in the form is present AND the user is authenticated (using bcrypt's authenticate method and the password entered in the form), store their id in the session hash and redirect them to the root path.
      session[:customer_id] = customer.id
      flash[:notice] = "Welcome back!"
      redirect_to tours_path
    else
      # If the user cannot be authenticated, redirect them to the login_path.
      flash[:error] = "Sorry, you did not enter valid credentials"
      redirect_to login_path
    end
  end
end
