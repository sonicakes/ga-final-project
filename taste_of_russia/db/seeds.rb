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
  :description => "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibu",
  :price => 500,
  :image_url => "https://images.unsplash.com/photo-1508783156892-955810b99f21?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=247ba905d9aba06ad8bf1689490d685b&auto=format&fit=crop&w=1189&q=80"
)

tour2 = Tour.create(
  :title => "Moscow, Voronezh, Lipetsk",
  :description => "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibu",
  :price => 1500,
  :image_url => "https://ribttes.com/wp-content/uploads/2014/09/15-2.jpg"

)

tour3 = Tour.create(
  :title => "Trans Siberian Adventure",
  :description => "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibu",
  :price => 7800,
  :image_url => "https://images.unsplash.com/photo-1424886097867-7a53e6058dff?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=633455f80835a74c6e3b7142b700a32b&auto=format&fit=crop&w=1492&q=80"

)

tour4 = Tour.create(
  :title => "The Urals Bliss",
  :description => "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibu",
  :price => 5000,
  :image_url => "https://i.dailymail.co.uk/i/pix/2013/09/10/article-2416920-1BBDEB90000005DC-847_634x423.jpg"

)

tour5 = Tour.create(
  :title => "Lake Baikal",
  :description => "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibu",
  :price => 4500,
  :image_url => "https://images.unsplash.com/photo-1518680371558-107eece618ec?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=ddf4e1d5545c02d744e803ba690f5ffc&auto=format&fit=crop&w=500&q=60"

)

# Seed Tour Days for Tour 1
tour_day1_1 = TourDay.create(
  :title => 'St Petersburg Musuem',
  :description => 'Wander the Hermitage Museum',
  :day_image_url => "https://images.unsplash.com/photo-1529839731635-e4909433cc5c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=20352d6b4a065f060130e4136eb796f6&auto=format&fit=crop&w=500&q=60"
)
tour1.tour_days << tour_day1_1

tour_day1_2 = TourDay.create(
  :title => 'Petergoff',
  :description => 'Visit one of the most aazing royalty living spaces',
  :day_image_url => 'https://media-cdn.tripadvisor.com/media/photo-s/03/64/07/98/peterhof-palace-and-garden.jpg'
)
tour1.tour_days << tour_day1_2

tour_day1_3 = TourDay.create(
  :title => 'St Petersburg to Moscow by train',
  :description => 'Travel in one of the fastest trains with comfort',
  :day_image_url => 'https://images.unsplash.com/photo-1519739311505-d0beab92872c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=618f8af3784497fffebf822157011dcb&auto=format&fit=crop&w=500&q=60'
)
tour1.tour_days << tour_day1_3

tour_day1_4 = TourDay.create(
  :title => 'Moscow, Red Square and CBD',
  :description => 'Explore one of the most vibrant cities',
  :day_image_url => 'https://s3.envato.com/files/241841587/preview.jpg'
)
tour1.tour_days << tour_day1_4

# Seed Tour Days for Tour 2

tour_day2_1 = TourDay.create(
  :title => 'Moscow, Red Square',
  :description => 'Wander the Red Square',
  :day_image_url => 'http://registremblay.com/wp-content/uploads/2016/09/Moscow_700x400.jpg'
)
tour2.tour_days << tour_day2_1

tour_day2_2 = TourDay.create(
  :title => 'Train from Moscow to Voronezh',
  :description => 'One night train from Moscow, you can enjoy this university town, home to many Russian artists and poets.',
  :day_image_url => 'http://russiatrek.org/images/photo/voronezh-city-scenery.jpg'
)
tour2.tour_days << tour_day2_2

tour_day2_3 = TourDay.create(
  :title => 'Voronezh city tour',
  :description => 'Explore young and modern city with million people',
  :day_image_url => 'https://upload.wikimedia.org/wikipedia/commons/7/79/Voronezh._Russia._stone_Bridge._%28%D0%92%D0%BE%D1%80%D0%BE%D0%BD%D0%B5%D0%B6._%D0%9A%D0%B0%D0%BC%D0%B5%D0%BD%D0%BD%D1%8B%D0%B9_%D0%BC%D0%BE%D1%81%D1%82%29.JPG'
)
tour2.tour_days << tour_day2_3

tour_day2_4 = TourDay.create(
  :title => 'Voronezh and Lipetsk',
  :description => 'Explore the home town of Peter the Great',
  :day_image_url => 'https://ribttes.com/wp-content/uploads/2014/09/Monument-to-Peter-the-Great-in-Lipetsk-Russia.jpg'
)
tour2.tour_days << tour_day2_4

# Seed Tour Days for Tour 3

tour_day3_1 = TourDay.create(
  :title => 'Vladivostok',
  :description => 'Visit the famous fortress and Russky Bridge',
  :day_image_url => 'https://sailtraininginternational.org/app/uploads/2017/10/vladivostok-3.jpg'
)
tour3.tour_days << tour_day3_1

tour_day3_2 = TourDay.create(
  :title => 'Khabarovsk to Ulan-Ude',
  :description => 'train trip from Khabarovsk, the city on the Amur River',
  :day_image_url => 'https://img-fotki.yandex.ru/get/196102/30348152.211/0_90ee1_e53837a9_orig'
)
tour3.tour_days << tour_day3_2

tour_day3_3 = TourDay.create(
  :title => 'Irkustsk to Krasnoyarsk',
  :description => 'Irkustsk is famous for its numerous Orthodox churches',
  :day_image_url => 'https://onestep4ward.com/wp-content/uploads/2012/04/Kazan-Church-Irkutsk.jpg'
)
tour3.tour_days << tour_day3_3

tour_day3_4 = TourDay.create(
  :title => 'Novosibirsk and Omsk',
  :description => 'Explore the third most populous city in Russia, rich and vibrant Novosibirsk',
  :day_image_url => 'https://www.travelshelper.com/wp-content/uploads/2017/02/Novosibirsk-Travel-S-Helper.jpg'
)
tour3.tour_days << tour_day3_4

tour_day3_5 = TourDay.create(
  :title => 'Yekaterinburg',
  :description => 'The city was called after the Catherine the Great',
  :day_image_url => 'https://i.ytimg.com/vi/pIdsOxNkR3I/maxresdefault.jpg'
)
tour3.tour_days << tour_day3_5

tour_day3_6 = TourDay.create(
  :title => 'Perm',
  :description => 'Deep into Ural Mountains, on the banks of the Kama River, Perm is home to rare snow leopards and Amur tigers',
  :day_image_url => 'http://russiatrek.org/blog/wp-content/uploads/2016/03/winter-in-perm-city-russia-from-above-5.jpg'
)
tour3.tour_days << tour_day3_6

tour_day3_7 = TourDay.create(
  :title => 'Yaroslavl to Moscow',
  :description => "It's part of the Golden Ring group of ancient towns. On the grounds of the 12th-century Spaso-Preobrazhensky (Savior Transfiguration) Monastery",
  :day_image_url => 'https://upload.wikimedia.org/wikipedia/commons/2/2f/Yaroslavl_Spaso-Preobrazhensky_Monastery_The_Church_of_Yaroslavl_Miracle-Workers_and_Transfiguration_Cathedral_IMG_0837_1725.jpg'
)
tour3.tour_days << tour_day3_7

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
