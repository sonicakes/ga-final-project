# Presentation plan

# browser

- here is my live website on heroku
- the idea was:
- customer part for browsing, booking, paying, viewing bookings
- administrator, could make and edit tours, bookings, customer Information
- no time for administrator part
- show booking flow
- highlight:
- tours and tour days are different models
- weather api, 3d map, stripe api
- google maps needs billing account, i used map tiler
- look at work

# code

- started with TDD
- when i did the first MTA project, we did a kind of TDD on paper and then in the console
- decided on a piece of functionality (price must be at least 500)
- write a test that describes that functionality
- that test should fail in beginning (e.g. i can set a price of 250)
- write the smallest amount of code that makes the test pass
- and hope it that the new code doesn't make other tests fail

- model tests
- these are simply because you usually just create working model,
- then write tests that check you have the write validations written

- controller tests
- these are harder, because you need to check multiple things
- like are objects passed to views
- do controllers redirect to the correct url
- are the right flash messages generated
- you also need to supply session variables for controllers that use authentication

- TDD can be very slow, you have to cycle between tests fail then test pass
- you only write code when tests fail

- because of the time this takes, i stopped TDD part way so that i could work faster
- of course, this broke my tests, so that yesterday i had to fix more code
and even change some tests - because the functionality i wanted had changed



- DEMO test
- run rspec in the root folder
- it will show 57 examples pass, 0 faiures, 13 pending
- pending are the ones i have to do later
- open coverage index in browser

- then go to tour model and comment out the minimum price validation

- run rspec again, there should be 1 failure now
- the model no longer prevents a price lesss than 500
- so the test successfully sets the price as 250
- the test expects 250 to not be valid
- so the test fails

i want to add:
-Password reset email notification
- Signup email notification
- Booking purchase email notification
-  Maybe implement search in the evening
- Maybe implement admin code in the evening
- administrator managgement part
- refunds
- multiple person booking
- search and filter tours
- customer testimonials
