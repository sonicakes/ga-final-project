Fri    24th
========
No coding.
Draw wireframes for views, using previous projects for inspiration.

Research email notifications using ruby

Sat    25th
========
Implement models using rspec tests, with validation and auth, email verify

- User (Customer and Admin) single table inheritance?
- Tour
- Tour Day
- Booking
- Booking Person

Sun    26th
========
Implement controllers using rspec tests(with basic, unstyled views)

For a customer
- home:index        Main landing page for site
- tour:index        Listing off all tours    
- tour:show            Showing an individual tour
- booking:create    Create a booking for a customer for a tour (include stripe payment)
- booking:index        Show a customer all the bookings they have
- booking:edit        Allow a customer to change the booking date or cancel (and request refund)
- booking:show        Allow a customer to view all the details of their booking
- user:show            Allow the customer to view their own details
- user:edit            Allow the customer to edit their own details
- login                For customer to log in to the site
- logout            For customer to logout
* We don't need sign up, as we register customers when they book a holiday    

For admin
- login / logout    Obvious
- CRUD controller for every main model (customer, tour, tour day, booking, booking person)



Mon    27th
=======
Work on front end styles
- includes bootstrap, maps


Tue 28th
========
tour:index - filter tour results (e.g. cities to visit, length stay, price) - all done in JS


Value add things... if we get time we add these
- captcha
- password recovery
- "ask a question" about tours
weather api ajax thing for the cities or locations or whatever i don't know how.. how that's going to relate.. oh if location is coming from database we can probably... rah... don't write anything for Wednesday i'm sure there will be plenty to do.


Wed    29th
=======
BUGS

Thu 30th
=======

Prepare demo - what features to showcase
