# Planning for the Project

## Reasons
After completing my first project at GA (HolidayApp), I wanted to continue developing the idea, taking on board feedback from project 1, implementing more advanced features and using custom designs.

## tours
- less-known destinations of Russia (not just Moscow or St Petersburg)
- packaged tours (no selection of options)
- filter tours by price, length of trip, etc
- booking can be cancelled and refund processed

## Users
- allow login using OuAuth (Google, Facebook etc.)
### Customer
Customer can view different tours, filter tours (search), book, pay.
### Admins
- Admins create tours, send out email notifications.
- Allow admins to add testimonies from clients
- Online query form that saves it to admin, he can view and reply. CAPTHA before user sends a question.
## Functionality

### Booking Holidays or Tours
- before booking, show info / warning about visa
- customer logs in after choosing a tour, then pro


### Taking a deposit payment
- What payment gateway should we use? Stripe, paypal, etc?

- When a user books a tour, we want them to pay a deposit straight away. This is so that the tour company can reserve there spot.

- The deposit amount will always be 10% of the tour price.


- We will use sandbox environment to do the payments

- On one page - provide details and make payment, click submit.

- Verify email adress before signing up

### Send email notifications
send out automatic confirmation to users
### Admins CRUDing Tours


### Tour view page for customers
- When customers view a tour, we should include a google street view of at least 3 popular sites they would visit.

- We show a map of the area they will visit.
- We should have a table showing were each tour will for how many nights:

Tour 1 - Taste of Russia
Day 1 - Moscow
Day 2 - Moscow
Day 3 - Moscow
Day 4 - St Petersburg
Day 4 - St Petersburg

Tour 2 -

### Other ideas
- How do we include accomodation?

## designs
Use Russian-themed designs that I drew in Illustrator.
Bootstrap

## Testing
writing TDD for testing the code in RSPEC

## User Flow
User gets to homepage from ad/brochure. They look through featured tours/click on button to start. They go to "All Tours" page, where they can filter through different tours by price, length, cities etc. User can also read testimonies about tours. They can also ask a question to admin about details that are not specified on the info page. They choose the one they like and go to a form to provide their details and complete the payment. They finalize it and receive confirmation of the payment.

Look through the website and actual purchase might occur over multiple visits to the site (time between interest in tour and commitment and decision making).
