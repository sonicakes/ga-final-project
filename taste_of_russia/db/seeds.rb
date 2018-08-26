Booking.destroy_all
Customer.destroy_all
Administrator.destroy_all
Tour.destroy_all
BookingPerson.destroy_all

# Seed Customers

customer1 = Customer.create(
  :password => "bob12345",
  :email => "bob-smith@example.com"
)
customer2 = Customer.create(
  :password => "sheila12345",
  :email => "sheila-dutch@example.com",
)

# Seed Administrators

administrator = Administrator.create(
  :password => "admin12345",
  :first_name => "Sonia",
  :email => "sonia-test@example.com",
  :last_name => "Parker"
)

# Seed Tours

tour1 = Tour.create(
  :title => "St Petersburg to Moscow",
  :description => "Foo",
  :price => 500,
  :image_url => "https://images.unsplash.com/photo-1508783156892-955810b99f21?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=247ba905d9aba06ad8bf1689490d685b&auto=format&fit=crop&w=1189&q=80"
)

tour2 = Tour.create(
  :title => "Moscow, Voronezh, Lipetsk",
  :description => "Foo",
  :price => 1500,
  :image_url => "https://ribttes.com/wp-content/uploads/2014/09/15-2.jpg"

)

tour3 = Tour.create(
  :title => "Trans Siberian Adventure",
  :description => "Foo",
  :price => 7800,
  :image_url => "https://images.unsplash.com/photo-1424886097867-7a53e6058dff?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=633455f80835a74c6e3b7142b700a32b&auto=format&fit=crop&w=1492&q=80"

)

tour4 = Tour.create(
  :title => "The Urals Bliss",
  :description => "Foo",
  :price => 5000,
  :image_url => "https://i.dailymail.co.uk/i/pix/2013/09/10/article-2416920-1BBDEB90000005DC-847_634x423.jpg"

)

tour5 = Tour.create(
  :title => "Lake Baikal",
  :description => "Foo",
  :price => 4500,
  :image_url => "https://images.unsplash.com/photo-1518680371558-107eece618ec?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=ddf4e1d5545c02d744e803ba690f5ffc&auto=format&fit=crop&w=500&q=60"

)

# Seed Tour Days for Tour 1
tour_day1_1 = TourDay.create(
  :title => 'St Petersburg Musuem',
  :description => 'Wander the Hermitage Museum',
)
tour1.tour_days << tour_day1_1

tour_day1_2 = TourDay.create(
  :title => 'Petergoff',
  :description => 'Visit one of the most aazing royalty living spaces',
)
tour1.tour_days << tour_day1_2

tour_day1_3 = TourDay.create(
  :title => 'St Petersburg to Moscow by train',
  :description => 'Travel in one of the fastest trains with comfort',
)
tour1.tour_days << tour_day1_3

tour_day1_4 = TourDay.create(
  :title => 'Moscow, Red Square and CBD',
  :description => 'Explore one of the most vibrant cities',
)
tour1.tour_days << tour_day1_4

# Seed Tour Days for Tour 2

tour_day2_1 = TourDay.create(
  :title => 'Moscow, Red Square',
  :description => 'Wander the Red Square',
)
tour2.tour_days << tour_day2_1

tour_day2_2 = TourDay.create(
  :title => 'Train from Moscow to Voronezh',
  :description => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.  cupid',
)
tour2.tour_days << tour_day2_2

tour_day2_3 = TourDay.create(
  :title => 'Voronezh city tour',
  :description => 'Explore young and modern city with million people',
)
tour2.tour_days << tour_day2_3

tour_day2_4 = TourDay.create(
  :title => 'Voronezh and Lipetsk',
  :description => 'Explore the home town of Peter the Great',
)
tour2.tour_days << tour_day2_4

# Seed Booking for Customer 1 and Tour 1, that is paid
booking1 = Booking.create(
  :payment_reference => "12345",
  :start_date => "2018-09-24"
)
customer1.bookings << booking1
tour1.bookings << booking1

# Seed two Booking People for Booking 1
booking_person1 = BookingPerson.create(
  :first_name => "Art",
  :last_name => "Vandelay",
)
booking1.booking_people << booking_person1

booking_person2 = BookingPerson.create(
  :first_name => "Joe",
  :last_name => "Devola",
)
booking1.booking_people << booking_person2

# Seed Booking for Customer 2 and Tour 2, that is not paid
booking2 = Booking.create(
  :payment_reference => "",
  :start_date => "2018-12-25"
)
customer2.bookings << booking2
tour2.bookings << booking2

# Seed four Booking People for Booking 2
booking_person3 = BookingPerson.create(
  :first_name => "Jerry",
  :last_name => "Seinfeld",
)
booking2.booking_people << booking_person3

booking_person4 = BookingPerson.create(
  :first_name => "George",
  :last_name => "Constanza",
)
booking2.booking_people << booking_person4

booking_person5 = BookingPerson.create(
  :first_name => "Cosmo",
  :last_name => "Kramer",
)
booking2.booking_people << booking_person5

booking_person6 = BookingPerson.create(
  :first_name => "Elaine",
  :last_name => "Bennis",
)
booking2.booking_people << booking_person6
