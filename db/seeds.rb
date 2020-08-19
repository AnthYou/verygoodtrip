require "open-uri"

Trip.destroy_all
User.destroy_all
Booking.destroy_all

# USERS CREATION
puts "Seeding users..."
users = [
  [
    {
      email: "beargrylls@official.com",
      password: 'ManvsWild!',
      first_name: "Bear",
      last_name: "Grylls",
      description: "I am the guy from Man vs Wild",
      birth_date: "07/06/1974".to_date,
    },
    "https://i.guim.co.uk/img/media/f8a09f6439b4cd6155eb0279fc223d51464d1888/0_86_4708_2825/master/4708.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=4892d97c7b94e7cbdaf1c19783f67d1d"
  ],
  [
    {
      email: "Moundirlevrai@official.com",
      password: 'coucoucestmoundir',
      first_name: "Moundir",
      last_name: "Zoughari",
      description: "I am the guy from Koh-Lanta and i love you",
      birth_date: "04/09/1973".to_date,
    },
    "https://www.toutelatele.com/IMG/arton100260.jpg"
  ],
  [
    {
      email: "Denislevrai@official.com",
      password: 'coucoucestDenis',
      first_name: "Denis",
      last_name: "Brogniart",
      description: "Ha! Ha !",
      birth_date: "12/06/1963".to_date,
    },
    "https://pbs.twimg.com/profile_images/906040030820536320/qQZ5_sgF.jpg"
  ],
  [
    {
      email: "Kanyeofficial@official.com",
      password: 'heysguy567',
      first_name: "Kanye",
      last_name: "West",
      description: "I am a god",
      birth_date: "08/06/1977".to_date
    },
    "https://thumbor.forbes.com/thumbor/fit-in/416x416/filters%3Aformat%28jpg%29/https%3A%2F%2Fspecials-images.forbesimg.com%2Fimageserve%2F5ed00f17d4a99d0006d2e738%2F0x0.jpg%3Fbackground%3D000000%26cropX1%3D154%26cropX2%3D4820%26cropY1%3D651%26cropY2%3D5314"
  ],
]

users.each do |user| iterated_user = User.new(user.first)
  file = URI.open(user.last)
  iterated_user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  # p iterated_user
  iterated_user.save!
end

puts "Done !"



# TRIPS CREATION

puts "Seeding trips ..."

trips = [
  [
    {
      title: "Experience a magical christmas in New York",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nisl nulla, convallis sed libero nec, bibendum egestas nibh. Nunc consequat ac elit id convallis. In id est ac quam placerat posuere vel ac tortor. ",
      destination: "New York",
      budget_min: 1000,
      budget_max: 2000,
      departure_date: "20/12/2020".to_date,
      return_date: "5/01/2021".to_date,
      capacity: 12,
      user: User.all.sample
    },
    "https://images.unsplash.com/photo-1534430480872-3498386e7856?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80"
  ],
  [
    {
      title: "Discover the Reunion Island",
      description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nisl nulla, convallis sed libero nec, bibendum egestas nibh. Nunc consequat ac elit id convallis. In id est ac quam placerat posuere vel ac tortor. " ,
      destination:"Saint-Denis" ,
      budget_min: 1500,
      budget_max: 3000,
      departure_date: "3/09/2020".to_date,
      return_date: "17/09/2020".to_date,
      capacity: 6,
      user: User.all.sample
    },
    "https://www.decisionsdurables.com/wp-content/uploads/2017/03/la_reunion_vue_du_ciel02_-_credit_irt_-_serge_gelabert_dts_12_2014.jpg"
  ],
  [
    {
      title: "Horsing and chilling in Camargue",
      description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nisl nulla, convallis sed libero nec, bibendum egestas nibh. Nunc consequat ac elit id convallis. In id est ac quam placerat posuere vel ac tortor. ",
      destination:"Camargue" ,
      budget_min: 350,
      budget_max: 400,
      departure_date: "18/08/2020".to_date,
      return_date: "31/08/2020".to_date,
      capacity: 4,
      user: User.all.sample
    },
    "https://images.unsplash.com/photo-1565622832101-358788927c53?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80"
  ],
  [
    {
      title: "From Roma with Love",
      description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nisl nulla, convallis sed libero nec, bibendum egestas nibh. Nunc consequat ac elit id convallis. In id est ac quam placerat posuere vel ac tortor. " ,
      destination: "Rome",
      budget_min: 350,
      budget_max: 850,
      departure_date: "21/08/2020".to_date,
      return_date: "23/08/2020".to_date,
      capacity: 6,
      user: User.all.sample
    },
    "https://images.unsplash.com/photo-1546946590-5d739771abc4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1512&q=80"
  ],
]

trips.each do |trip| iterated_trip = Trip.new(trip.first)
  file = URI.open(trip.last)
  iterated_trip.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  # p iterated_trip
  iterated_trip.save!
end

puts "Done !"



# # BOOKINGS CREATION

puts "Seeding bookings..."

10.times do
  Booking.create!(
    user: User.all.sample,
    trip: Trip.all.sample,
    description: "I would love to join this trip!",
    accepted: true
  )
end

puts "Done !"

# booking_1 = Booking.create!(
#   user: user_1,
#   trip: trip_1,
#   description: "I would love to join this trip!",
#   accepted: true
#   )

# booking_2 = Booking.create!(
#   user: user_2,
#   trip: trip_1,
#   description: "I would love to join this trip lol",
#   accepted: true
#   )

# booking_1 = Booking.create!(
#   user: user_3,
#   trip: trip_1,
#   description: "I would love to join this trip!",
#   accepted: true
#   )

# booking_1 = Booking.create!(
#   user: user_1,
#   trip: trip_2,
#   description: "I would love to join this trip!",
#   accepted: true
#   )

# booking_1 = Booking.create!(
#   user: user_2,
#   trip: trip_2,
#   description: "I would love to join this trip!",
#   accepted: true
#   )

# booking_1 = Booking.create!(
#   user: user_1,
#   trip: trip_3,
#   description: "I would love to join this trip!",
#   accepted: true
#   )



