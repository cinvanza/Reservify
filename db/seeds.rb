# Eliminar todos los datos anteriores
Booking.destroy_all
Flat.destroy_all
User.destroy_all


require "open-uri"

# Crear nuevos usuarios
user1 = User.create!(
  email: "cintia@gmail.com",
  password: "password123",
  last_name: "Zavi",
  first_name: "Cintia",
  country: "Argentina"
)
file = URI.open("https://avatars.githubusercontent.com/u/159795528?v=4")
user1.photo.attach(io: file, filename: "cintia.png", content_type: "image/png")
user1.save

user2 = User.create!(
  email: "luis@gmail.com",
  password: "password123",
  last_name: "Colmenarez",
  first_name: "Luis",
  country: "Venezuela"
)
file = URI.open("https://avatars.githubusercontent.com/u/18432498?v=4")
user2.photo.attach(io: file, filename: "luis.png", content_type: "image/png")
user2.save

user3 = User.create!(
  email: "vanesa@gmail.com",
  password: "password123",
  last_name: "Camano",
  first_name: "Vanesa",
  country: "Marruecos"
)
file = URI.open("https://avatars.githubusercontent.com/u/82952196?v=4")
user3.photo.attach(io: file, filename: "vanesa.png", content_type: "image/png")
user3.save

user4 = User.create!(
  email: "jose@gmail.com",
  password: "password123",
  last_name: "Cerrato",
  first_name: "Jose",
  country: "Honduras"
)
file = URI.open("https://avatars.githubusercontent.com/u/150078256?v=4")
user4.photo.attach(io: file, filename: "jose.png", content_type: "image/png")
user4.save

# Crear nuevos flats
flat1 = Flat.create!(
  address: "123 Main St, Anytown, USA",
  price: 100,
  capacity: 4,
  user: user1,
  title: "Cozy Apartment",
  description: "A nice and cozy apartment in the city center.",
  image_url: "http://example.com/image1.jpg",
  available_start: "2024-07-01",
  available_end: "2024-07-31",
  available_days: "Monday, Wednesday, Friday"
)

flat2 = Flat.create!(
  address: "456 Elm St, Othertown, Canada",
  price: 150,
  capacity: 6,
  user: user2,
  title: "Spacious House",
  description: "A spacious house with a beautiful garden.",
  image_url: "http://example.com/image2.jpg",
  available_start: "2024-08-01",
  available_end: "2024-08-31",
  available_days: "Tuesday, Thursday, Saturday"
)

flat3 = Flat.create!(
  address: "400 Elm St, Othertown, Canada",
  price: 120,
  capacity: 2,
  user: user3,
  title: "Beautiful House",
  description: "A spacious house with a beautiful view.",
  image_url: "http://example.com/image2.jpg",
  available_start: "2024-08-11",
  available_end: "2024-08-31",
  available_days: "Tuesday, Thursday, Saturday"
)

# Crear nuevas reservas
Booking.create!(
  check_in: "2024-07-10",
  check_out: "2024-07-15",
  status: 1,
  user: user1,
  flat: flat1
)

Booking.create!(
  check_in: "2024-08-05",
  check_out: "2024-08-12",
  status: 1,
  user: user2,
  flat: flat2
)

Booking.create!(
  check_in: "2024-08-05",
  check_out: "2024-08-12",
  status: 1,
  user: user2,
  flat: flat2
)
