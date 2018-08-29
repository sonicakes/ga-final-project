class AdministratorSessionController < ApplicationController

  layout 'admin'

  def destroy
    session[:administrator_id] = nil
    flash[:notice] = "Administrator logged out."
    redirect_to admin_login_path
  end

  def create

    administrator = Administrator.find_by :email => params[:email]

    if administrator.present? && administrator.authenticate(params[:password])
      # If a user record with the entered in the form is present AND the user is authenticated (using bcrypt's authenticate method and the password entered in the form), store their id in the session hash and redirect them to the root path.
      session[:administrator_id] = administrator.id
      flash[:notice] = "Welcome back!"
      redirect_to admin_dashboard_path
    else
      # If the user cannot be authenticated, redirect them to the login_path.
      flash[:error] = "Sorry, you did not enter valid credentials"
      redirect_to admin_login_path
    end
  end

  def dashboard

  end
end
