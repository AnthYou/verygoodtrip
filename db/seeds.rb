puts "clening database"
#Booking.destroy_all
puts "start destroy trip"
Trip.destroy_all
puts "end destroy trip"
puts "start destroy user"
User.destroy_all
puts "end destroy user"
puts "creation trip1"
user = User.create(
  email: "gourouhassiba@gmail.com",
  password: "1jdhd"
  #first_name: "hassiba",
  #last_name: "gourou",
  #age: 25,
  #description: "blabla",
  #reviews:"blabla" )
  )

trip1 =Trip.new(
  title: "Vivez l'été de vos Rêves à Paris",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Urna, proin diam lectus vestibulum aenean ultrices non velit accumsan. Dictum egestas donec ipsum, ut donec et. Imperdiet orci, sed sed molestie. Ac egestas lorem ullamcorper.
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Urna, proin diam lectus vestibulum aenean ultrices non velit accumsan. Dictum egestas donec ipsum, ut donec et. Imperdiet orci, sed sed molestie. Ac egestas lorem ullamcorpe. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Urna, proin diam lectus vestibulum aenean ultrices non velit accumsan. Dictum egestas donec ipsum, ut donec et. Imperdiet orci, sed sed molestie. Ac egestas lorem ullamcorper. ",
  destination: "Paris",
  budget_min: 1000,
  budget_max: 2000,
  departure_date: Date.parse("20/06/2021"),
  return_date: Date.parse("5/07/2021"),
  capacity: 12,
)
puts "attach photo for trip 1"
trip1.photo.attach(io: File.open('../verygoodtrip/app/assets/images/paris.jpg'), filename: 'paris')
trip1.user = user
trip1.save!
puts "creation trip2"

trip2 =Trip.new(
  title: "Excursion sur l'ile de la réunion",
  description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Urna, proin diam lectus vestibulum aenean ultrices non velit accumsan. Dictum egestas donec ipsum, ut donec et. Imperdiet orci, sed sed molestie. Ac egestas lorem ullamcorper.
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Urna, proin diam lectus vestibulum aenean ultrices non velit accumsan. Dictum egestas donec ipsum, ut donec et. Imperdiet orci, sed sed molestie. Ac egestas lorem ullamcorpe. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Urna, proin diam lectus vestibulum aenean ultrices non velit accumsan. Dictum egestas donec ipsum, ut donec et. Imperdiet orci, sed sed molestie. Ac egestas lorem ullamcorper. " ,
  destination:"Saint-Denis" ,
  budget_min: 1500,
  budget_max: 3000,
  departure_date: Date.parse("3/09/2020"),
  return_date: Date.parse("17/09/2020"),
  capacity: 6,
)
puts "attach photo for trip 2"
trip2.photo.attach(io: File.open('../verygoodtrip/app/assets/images/ile de la reunion.jpeg'), filename: 'ile de la reunion')
trip2.user = user
trip2.save!

puts "creation trip3"
trip3 =Trip.new(
  title: "Cheval et détente en Camargue",
  description:"Pour les amateurs d'équitation, la Camargue est un rêve, entre équipées sauvages dans les herbes hautes, manades et Férias colorées",
  destination:"Camargue" ,
  budget_min: 350,
  budget_max: 400,
  departure_date: Date.parse("18/08/2020"),
  return_date: Date.parse("31/08/2020"),
  capacity: 4,
)
puts "attach photo for trip 3"
trip3.photo.attach(io: File.open('../verygoodtrip/app/assets/images/camargue.jpeg'), filename: 'Camargue')
trip3.user = user
trip3.save!

puts "creation trip4"
trip4 =Trip.new(
  title: "City Break à Rome",
  description:"Un petit week-end pour déconnecter, prendre une bonne dose de vitamine D et faire des découvertes, ça vous tente ?" ,
  destination: "Rome",
  budget_min: 350,
  budget_max: 850,
  departure_date: Date.parse("21/08/2020"),
  return_date: Date.parse("23/08/2020"),
  capacity: 6,
)
puts "attach photo for trip 4"
trip4.photo.attach(io: File.open('../verygoodtrip/app/assets/images/rome.jpeg'), filename: 'Rome')
trip4.user = user
trip4.save!
