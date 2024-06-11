# Eliminar todos los datos anteriores
Booking.destroy_all
Flat.destroy_all
User.destroy_all

# Restablecer los ID de las tablas (opcional)
ActiveRecord::Base.connection.reset_pk_sequence!('bookings')
ActiveRecord::Base.connection.reset_pk_sequence!('flats')
ActiveRecord::Base.connection.reset_pk_sequence!('users')

# Crear nuevos usuarios
user1 = User.create!(
  email: "unique_user1@example.com",
  password: "password123",
  last_name: "Doe",
  first_name: "John",
  country: "USA"
)

user2 = User.create!(
  email: "unique_user2@example.com",
  password: "password123",
  last_name: "Smith",
  first_name: "Jane",
  country: "Canada"
)

user3 = User.create!(
  email: "unique_user3@example.com",
  password: "password123",
  last_name: "Paul",
  first_name: "Jane",
  country: "USA"
)

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
