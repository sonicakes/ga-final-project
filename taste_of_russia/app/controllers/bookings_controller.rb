class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
    @tour = Tour.find params[:tour_id]
   end

   def show
    @booking = Booking.find params[:id]
   end

 def create

     # Every booking needs to belong to a customer
     # If the customer already has an account and is logged in, then we use
     # that customer object.

     # If they are not logged in, then we need to try making a new customer
     # record using the details they entered into the form.

     # The saving of the new customer, could fail (e.g. they didn't enter a
     # password, the email address is already in use, etc.)

     # If we can't save the new customer, then we redirect back to the booking
     # new page, immediately.

     customer = Customer.new
     customer.first_name = params[:customer_first_name]
     customer.last_name = params[:customer_last_name]
     customer.email = params[:customer_email]
     customer.password = params[:customer_password]
     customer.phone_number = params[:customer_phone_number]

     unless customer.save
        redirect_to new_booking_url and return
     end

     #is the customer logged in?
     #if not, make a customer object using details they send in a form
     # if it fails,
    #make a booking object


    #assign all the variables
    # try and save it
    #if saving successful, redirect tobooking#show
    #if not, redirect booking#new form again
   booking = Booking.new
   booking.start_date = params[:start_date]
   booking.tour_id = params[:tour_id]
   booking.customer_id = customer.id

   unless booking.save
      redirect_to new_booking_url and return
   end
  #we now saved the booking, we now need to add Booking People to the booking.


   redirect_to booking

 end


end
