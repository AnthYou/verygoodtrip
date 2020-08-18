Trip.destroy_all
User.destroy_all
Booking.destroy_all

user_1 = User.create!(
  email: "beargrylls@official.com",
  password: 'ManvsWild!',
  first_name: "Bear",
  last_name: "Grylls",
  description: "I am the guy from Man vs Wild",
  birth_date: "07/06/1974"
)

user_2 = User.create!(
  email: "Moundirlevrai@official.com",
  password: 'coucoucestmoundir',
  first_name: "Moundir",
  last_name: "Zoughari",
  description: "I am the guy from Koh-Lanta",
  birth_date: "04/09/1973"
)

user_3 = User.create!(
  email: "Denislevrai@official.com",
  password: 'coucoucestDenis',
  first_name: "Denis",
  last_name: "Brogniart",
  description: "Ha!",
  birth_date: "12/06/1963"
)

user_4 = User.create!(
  email: "Kanyeofficial@official.com",
  password: 'heysguy567',
  first_name: "Kanye",
  last_name: "West",
  description: "I am a god",
  birth_date: "08/06/1977"
)

trip_1 = Trip.create!(
  title: "Vivez le noël de vos Rêves à New-York",
  description: "Un séjour de rêve ",
  destination: "New York",
  budget_min: 1000,
  budget_max: 2000,
  departure_date: "20/12/2020",
  return_date: "5/01/2021",
  capacity: 12,
  user: user_1
)

trip_2 = Trip.create!(
  title: "Excursion sur l'ile de la réunion",
  description:"Un séjour de rêve" ,
  destination:"Saint-Denis" ,
  budget_min: 1500,
  budget_max: 3000,
  departure_date: "3/09/2020",
  return_date: "17/09/2020",
  capacity: 6,
  user: user_2
)

trip_3 = Trip.create!(
  title: "Cheval et détente en Camargue",
  description:"Pour les amateurs d'équitation, la Camargue est un rêve, entre équipées sauvages dans les herbes hautes, manades et Férias colorées",
  destination:"Camargue" ,
  budget_min: 350,
  budget_max: 400,
  departure_date: "18/08/2020",
  return_date: "31/08/2020",
  capacity: 4,
  user: user_3

)

trip_4 = Trip.create!(
  title: "City Break à Rome",
  description:"Un petit week-end pour déconnecter, prendre une bonne dose de vitamine D et faire des découvertes, ça vous tente ?" ,
  destination: "Rome",
  budget_min: 350,
  budget_max: 850,
  departure_date: "21/08/2020",
  return_date: "23/08/2020",
  capacity: 6,
  user: user_4
)

booking_1 = Booking.create!(
  user: user_2,
  trip: trip_1,
  description: "I would love to join this trip!",
  accepted: true
  )

booking_2 = Booking.create!(
  user: user_3,
  trip: trip_1,
  description: "I would love to join this trip lol",
  accepted: true
  )
