## User (customer)
- id
- email
- password
- first name
- last name
- phone number

## User (admin)
- id
- email
- password
- first name
- last name

## Tours
- id
- title
- number of days
- number of destinations
- blurb
- story
- price

## Tour Day
- belongs to Tour
- id
- tour_id
- title
- blurb

## Booking
- id
- tour_id
- user_id(customer)
- start date
- payment reference

## Booking-Person
- belongs to Booking
- id
- booking_id
- first name
- last name
