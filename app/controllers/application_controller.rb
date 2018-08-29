class ApplicationController < ActionController::Base

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_customer
    @current_customer ||= Customer.find(session[:customer_id]) if session[:customer_id]
  end
  helper_method :current_customer

  def current_administrator
    @current_administrator ||= Administrator.find(session[:administrator_id]) if session[:administrator_id]
  end
  helper_method :current_administrator

  def authorize_customer
    redirect_to '/login' unless current_customer
  end

  def authorize_administrator
    # TODO
    redirect_to '/admin/login' unless current_administrator
  end


end
