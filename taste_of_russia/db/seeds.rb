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
# tour 5 doesnt have any days yet, so the show page for it should say "TBA"
tour5 = Tour.create(
  :title => "Lake Baikal",
  :description => "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibu",
  :price => 4500,
  :image_url => "https://images.unsplash.com/photo-1518680371558-107eece618ec?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=ddf4e1d5545c02d744e803ba690f5ffc&auto=format&fit=crop&w=500&q=60"

)

# tour 6 will have 6 days
tour6 = Tour.create(
  :title => "Caucasian District‎",
  :description => "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibu",
  :price => 3500,
  :image_url => "http://russiatrek.org/blog/wp-content/uploads/2016/10/tsakhur-dagestan-caucasus-russia-6.jpg"
)
# tour 7 will have 8 days
tour7 = Tour.create(
  :title => "Honeymoon in Crimea",
  :description => "They say it's Russia now, so you can spend honeymoon without getting international passport. Crimean Bridge is now open, since Msy 2018, so enjoy! (subject to political discussion. Annexation has not been accepted widely in the world.)",
  :price => 10500,
  :image_url => "https://www.kyivpost.com/wp-content/uploads/2017/08/DJI_0022.2e16d0ba.fill-1200x795-800x520.jpg"
)

#tour 8: Golden Ring,4 Days
# tour 9: Sochi and Black sea, only 2 Days
# tour 10: World Cup, Kazan, only 1 day
# tour 11: Historic, 10 days
# tour 12: From Russia with love, premium, 15 days! Includes 7 days from trans siberian, plus 8 days from Historic
# Seed Tour Days for Tour 1
tour_day1_1 = TourDay.create(
  :title => 'St Petersburg',
  :description => 'Wander the Hermitage Museum',
  :order => 1,
  :location => "59.9393/30.3132",
  :day_image_url => "https://images.unsplash.com/photo-1529839731635-e4909433cc5c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=20352d6b4a065f060130e4136eb796f6&auto=format&fit=crop&w=500&q=60"
)
tour1.tour_days << tour_day1_1

tour_day1_2 = TourDay.create(
  :title => 'Petergoff',
  :description => 'Visit one of the most aazing royalty living spaces',
  :order => 2,
  :location => '59.8808/29.8827',
  :day_image_url => 'https://media-cdn.tripadvisor.com/media/photo-s/03/64/07/98/peterhof-palace-and-garden.jpg'
)
tour1.tour_days << tour_day1_2

tour_day1_3 = TourDay.create(
  :title => 'St Petersburg',
  :description => 'Travel in one of the fastest trains with comfort',
  :order => 3,
  :location => '59.9343/30.3343',
  :day_image_url => 'https://images.unsplash.com/photo-1519739311505-d0beab92872c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=618f8af3784497fffebf822157011dcb&auto=format&fit=crop&w=500&q=60'
)
tour1.tour_days << tour_day1_3

tour_day1_4 = TourDay.create(
  :title => 'Moscow',
  :description => 'Explore one of the most vibrant cities',
  :order => 4,
  :location => '55.7540/37.6194',
  :day_image_url => 'https://s3.envato.com/files/241841587/preview.jpg'
)
tour1.tour_days << tour_day1_4

# Seed Tour Days for Tour 2

tour_day2_1 = TourDay.create(
  :title => 'Moscow',
  :description => 'Wander the big park of VDNH',
  :order => 1,
  :location => "55.8308/37.6285",
  :day_image_url => 'http://registremblay.com/wp-content/uploads/2016/09/Moscow_700x400.jpg'
)
tour2.tour_days << tour_day2_1

tour_day2_2 = TourDay.create(
  :title => 'Moscow',
  :order => 2,
  :location => '55.7413/37.6201',
  :description => 'The State Tretyakov Gallery is the national treasury of Russian fine art and contains more than 180,000 works of painting, sculpture and graphics.',
  :day_image_url => 'https://cdn.rbth.com/all/2017/02/09/putin_tretyakov_gallery.jpg'
)
tour2.tour_days << tour_day2_2

tour_day2_3 = TourDay.create(
  :title => 'Voronezh',
  :order => 3,
  :location => '51.6761/39.2080',
  :description => 'Explore young and modern city with million people',
  :day_image_url => 'https://upload.wikimedia.org/wikipedia/commons/7/79/Voronezh._Russia._stone_Bridge._%28%D0%92%D0%BE%D1%80%D0%BE%D0%BD%D0%B5%D0%B6._%D0%9A%D0%B0%D0%BC%D0%B5%D0%BD%D0%BD%D1%8B%D0%B9_%D0%BC%D0%BE%D1%81%D1%82%29.JPG'
)
tour2.tour_days << tour_day2_3

tour_day2_4 = TourDay.create(
  :title => 'Lipetsk',
  :order => 4,
  :location => '52.6122/39.5975',
  :description => 'Explore the home town of Peter the Great',
  :day_image_url => 'https://ribttes.com/wp-content/uploads/2014/09/Monument-to-Peter-the-Great-in-Lipetsk-Russia.jpg'
)
tour2.tour_days << tour_day2_4

# Seed Tour Days for Tour 3

tour_day3_1 = TourDay.create(
  :title => 'Vladivostok',
  :order => 1,
  :location => '43.1155/131.8775',
  :description => 'Visit the famous fortress and Russky Bridge',
  :day_image_url => 'https://sailtraininginternational.org/app/uploads/2017/10/vladivostok-3.jpg'
)
tour3.tour_days << tour_day3_1

tour_day3_2 = TourDay.create(
  :title => 'Khabarovsk',
  :order => 2,
  :location => '48.4808/135.0825',
  :description => 'train trip from Khabarovsk, the city on the Amur River',
  :day_image_url => 'https://img-fotki.yandex.ru/get/196102/30348152.211/0_90ee1_e53837a9_orig'
)
tour3.tour_days << tour_day3_2

tour_day3_3 = TourDay.create(
  :title => 'Irkustsk',
  :order => 3,
  :location => '52.2878/104.2629',
  :description => 'Irkustsk is famous for its numerous Orthodox churches',
  :day_image_url => 'https://onestep4ward.com/wp-content/uploads/2012/04/Kazan-Church-Irkutsk.jpg'
)
tour3.tour_days << tour_day3_3

tour_day3_4 = TourDay.create(
  :title => 'Novosibirsk',
  :order => 4,
  :location => '54.9858/82.9153',
  :description => 'Explore the third most populous city in Russia, rich and vibrant Novosibirsk',
  :day_image_url => 'https://www.travelshelper.com/wp-content/uploads/2017/02/Novosibirsk-Travel-S-Helper.jpg'
)
tour3.tour_days << tour_day3_4

tour_day3_5 = TourDay.create(
  :title => 'Yekaterinburg',
  :order => 5,
  :location => '56.8383/60.5792',
  :description => 'The city was called after the Catherine the Great',
  :day_image_url => 'https://i.ytimg.com/vi/pIdsOxNkR3I/maxresdefault.jpg'
)
tour3.tour_days << tour_day3_5

tour_day3_6 = TourDay.create(
  :title => 'Perm',
  :order => 6,
  :location => '58.0246/56.1698',
  :description => 'Deep into Ural Mountains, on the banks of the Kama River, Perm is home to rare snow leopards and Amur tigers',
  :day_image_url => 'http://russiatrek.org/blog/wp-content/uploads/2016/03/winter-in-perm-city-russia-from-above-5.jpg'
)
tour3.tour_days << tour_day3_6

tour_day3_7 = TourDay.create(
  :title => 'Yaroslavl',
  :order => 7,
  :location => '57.6368/39.8509',
  :description => "It's part of the Golden Ring group of ancient towns. On the grounds of the 12th-century Spaso-Preobrazhensky (Savior Transfiguration) Monastery",
  :day_image_url => 'https://upload.wikimedia.org/wikipedia/commons/2/2f/Yaroslavl_Spaso-Preobrazhensky_Monastery_The_Church_of_Yaroslavl_Miracle-Workers_and_Transfiguration_Cathedral_IMG_0837_1725.jpg'
)
tour3.tour_days << tour_day3_7

# seed tour days for Tour 4
tour_day4_1 = TourDay.create(
  :title => 'Chelyabinsk',
  :order => 1,
  :location => '55.1716/61.4152',
  :description => 'Climb the mountains, that separate Europe from Asia',
  :day_image_url => 'http://www.all-about-russia.ru/nature/mountain/ural_mountain/ural_mountain5.jpg'
)
tour4.tour_days << tour_day4_1

tour_day4_2 = TourDay.create(
  :title => 'Tyumen',
  :order => 2,
  :location => '57.1811/65.5050',
  :description => 'visit famous Hot Springs!',
  :day_image_url => 'https://media-cdn.tripadvisor.com/media/photo-s/05/af/61/41/hot-springs-tyumen-russia.jpg'
)
tour4.tour_days << tour_day4_2

tour_day4_3 = TourDay.create(
  :title => 'Orenburg',
  :order => 3,
  :location => '51.7866/55.0689',
  :description => 'Enjoy the authentic Orenburg Shaul while practicing your knitting!',
  :day_image_url => 'https://images-na.ssl-images-amazon.com/images/I/A12%2BewTuRAL._SY500_.jpg'
)
tour4.tour_days << tour_day4_3

tour_day4_4 = TourDay.create(
  :title => 'Ufa',
  :order => 4,
  :location => '54.9858/82.9153',
  :description => 'Taste the most delicious Ural dumplings, or Pelmeni',
  :day_image_url => 'http://russia-ic.com/img/culture_art/pelmeni_history.jpg'
)
tour4.tour_days << tour_day4_4

tour_day4_5 = TourDay.create(
  :title => 'Yekaterinburg',
  :order => 5,
  :location => '56.8383/60.5792',
  :description => 'Visit the Church on Blood, where Nicholas II and his family were executed.',
  :day_image_url => 'http://photos.wikimapia.org/p/00/05/68/43/73_big.jpg'
)
tour4.tour_days << tour_day4_5


# Seed Booking for Customer 1 and Tour 1, that is paid
booking1 = Booking.create(
  :payment_reference => "12345",
  :start_date => "2018-09-24",
  :status => "placed"
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
  :start_date => "2018-12-25",
  :status => "placed"
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
