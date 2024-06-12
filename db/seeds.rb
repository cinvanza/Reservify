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
  image_url: "https://cf2.bstatic.com/xdata/images/hotel/max1024x768/430469495.jpg?k=02bfcc12a50147976f02233647fa443842e65604d3c25871510dbc82da1bbd0a&o=&hp=1",
  available_start: "2024-07-01",
  available_end: "2024-07-31",
  available_days: "Monday, Wednesday, Friday"
)
file = URI.open("https://cf2.bstatic.com/xdata/images/hotel/max1024x768/430469495.jpg?k=02bfcc12a50147976f02233647fa443842e65604d3c25871510dbc82da1bbd0a&o=&hp=1")
flat1.photos.attach(io: file, filename: "flat1.png", content_type: "image/png")
flat1.save

flat2 = Flat.create!(
  address: "456 Elm St, Othertown, Canada",
  price: 150,
  capacity: 6,
  user: user2,
  title: "Spacious House",
  description: "A spacious house with a beautiful garden.",
  image_url: "https://www.thespruce.com/thmb/P1X0YhmduQ820j_3dsk3smuYq7Y=/750x0/filters:no_upscale():max_bytes(150000):strip_icc()/DesireeBurns_Boston_1Franklin_1-1714de8139854b3bbc2ffcdbfd333157.jpg",
  available_start: "2024-08-01",
  available_end: "2024-08-31",
  available_days: "Tuesday, Thursday, Saturday"
)
file = URI.open("https://www.thespruce.com/thmb/P1X0YhmduQ820j_3dsk3smuYq7Y=/750x0/filters:no_upscale():max_bytes(150000):strip_icc()/DesireeBurns_Boston_1Franklin_1-1714de8139854b3bbc2ffcdbfd333157.jpg")
flat2.photos.attach(io: file, filename: "flat2.png", content_type: "image/png")
flat2.save

flat3 = Flat.create!(
  address: "400 Elm St, Othertown, Canada",
  price: 120,
  capacity: 2,
  user: user3,
  title: "Beautiful House",
  description: "A spacious house with a beautiful view.",
  image_url: "https://www.thespruce.com/thmb/cVfwKyUhZPTwtD3WiejE-EElhIQ=/750x0/filters:no_upscale():max_bytes(150000):strip_icc()/Stocksy_txp3d216bb1tUq300_Medium_4988078-56c96ac19def4bf8ba430cf5063b6b38.jpg",
  available_start: "2024-08-11",
  available_end: "2024-08-31",
  available_days: "Tuesday, Thursday, Saturday"
)
file = URI.open("https://www.thespruce.com/thmb/cVfwKyUhZPTwtD3WiejE-EElhIQ=/750x0/filters:no_upscale():max_bytes(150000):strip_icc()/Stocksy_txp3d216bb1tUq300_Medium_4988078-56c96ac19def4bf8ba430cf5063b6b38.jpg")
flat3.photos.attach(io: file, filename: "flat3.png", content_type: "image/png")
flat3.save


flat4 = Flat.create!(
  address: "915 Migueletes, Palermo, C1426BUK Buenos Aires, Argentina",
  price: 115,
  capacity: 4,
  user: user3,
  title: "Best Apartment in Cañitas",
  description: "Located in Buenos Aires, 2.5 km from Bosques de Palermo and 2 km from Lagos de Palermo.",
  image_url: "https://cdn.sanity.io/images/v48q37k7/production/50fd5cc4ce120aeedc90fdfb546342d305107d8f-3000x2000.jpg?auto=format&fit=max&q=75&w=750",
  available_start: "2024-08-12",
  available_end: "2024-08-30",
  available_days: "Tuesday, Thursday, Saturday"
)
file = URI.open("https://cdn.sanity.io/images/v48q37k7/production/50fd5cc4ce120aeedc90fdfb546342d305107d8f-3000x2000.jpg?auto=format&fit=max&q=75&w=750")
flat4.photos.attach(io: file, filename: "flat4.png", content_type: "image/png")
flat4.save

flat5 = Flat.create!(
  address: "Calle de Echegaray, Centro de Madrid, 28014 Madrid, España",
  price: 125,
  capacity: 2,
  user: user3,
  title: "Mezzanine Orange",
  description: "This accommodation is in the heart of Madrid and has an excellent rating.",
  image_url: "https://cf2.bstatic.com/xdata/images/hotel/max1024x768/533820630.jpg?k=2cfc7e0575b363ad51aa8c450d2c259f5f2383aba3f7e21e92b24f86ab8caa2d&o=&hp=1",
  available_start: "2024-08-15",
  available_end: "2024-08-29",
  available_days: "Tuesday, Thursday, Saturday"
)
file = URI.open("https://cf2.bstatic.com/xdata/images/hotel/max1024x768/533820630.jpg?k=2cfc7e0575b363ad51aa8c450d2c259f5f2383aba3f7e21e92b24f86ab8caa2d&o=&hp=1")
flat5.photos.attach(io: file, filename: "flat5.png", content_type: "image/png")
flat5.save

flat6 = Flat.create!(
  address: "11 avenue Gambetta, Ménilmontant - 20º distrito, 75020 París, Francia",
  price: 155,
  capacity: 3,
  user: user3,
  title: "Pere Lachaise Gem",
  description: "A spacious house with a beautiful view.",
  image_url: "https://cdn.sanity.io/images/v48q37k7/production/a77659fe95ea655faf90d7faf3de67820ebec27b-3000x1998.jpg?auto=format&fit=max&q=75&w=750",
  available_start: "2024-10-15",
  available_end: "2024-10-29",
  available_days: "Tuesday, Thursday, Saturday"
)
file = URI.open("https://cdn.sanity.io/images/v48q37k7/production/a77659fe95ea655faf90d7faf3de67820ebec27b-3000x1998.jpg?auto=format&fit=max&q=75&w=750")
flat6.photos.attach(io: file, filename: "flat6.png", content_type: "image/png")
flat6.save

flat7 = Flat.create!(
  address: "Calle de Velázquez, 28001 Madrid",
  price: 110,
  capacity: 4,
  user: user3,
  title: "Elegance and Comfort in the Salamanca District",
  description: "This elegant two-bedroom apartment is located in the prestigious Salamanca District. It features spacious rooms, a modern kitchen, and a balcony with street views.",
  image_url: "https://www.redfin.com/blog/wp-content/uploads/2022/09/spacejoy-xkJ2_THgKmk-unsplash-768x432.jpg",
  available_start: "2024-10-11",
  available_end: "2024-10-31",
  available_days: "Tuesday, Thursday, Saturday"
)
file = URI.open("https://www.redfin.com/blog/wp-content/uploads/2022/09/spacejoy-xkJ2_THgKmk-unsplash-768x432.jpg")
flat7.photos.attach(io: file, filename: "flat7.png", content_type: "image/png")
flat7.save

flat8 = Flat.create!(
  address: "Kensington High Street, W8, Londres",
  price: 150,
  capacity: 3,
  user: user3,
  title: "Luxury and Exclusivity in Kensington",
  description: "Luxury apartment with two bedrooms and two bathrooms in one of the most exclusive areas of London. It features access to a gym and swimming pool.",
  image_url: "https://cdn.sanity.io/images/v48q37k7/production/90f250ce1a252231c2ac345644ebf6199820e727-3000x2000.jpg?auto=format&fit=max&q=75&w=750",
  available_start: "2024-10-11",
  available_end: "2024-10-31",
  available_days: "Tuesday, Thursday, Saturday"
)
file = URI.open("https://cdn.sanity.io/images/v48q37k7/production/90f250ce1a252231c2ac345644ebf6199820e727-3000x2000.jpg?auto=format&fit=max&q=75&w=750")
flat8.photos.attach(io: file, filename: "flat8.png", content_type: "image/png")
flat8.save

flat9 = Flat.create!(
  address: "Old Street, EC1V, Londres",
  price: 150,
  capacity: 3,
  user: user3,
  title: "Pere Lachaise Gem",
  description: "Estilo y Comodidad en Shoreditch",
  image_url: "https://cdn.sanity.io/images/v48q37k7/production/842d7758c847c57c20fdb1522ca420dcfcd461ba-3000x2000.jpg?auto=format&fit=max&q=75&w=750",
  available_start: "2024-10-11",
  available_end: "2024-10-31",
  available_days: "Tuesday, Thursday, Saturday"
)
file = URI.open("https://cdn.sanity.io/images/v48q37k7/production/842d7758c847c57c20fdb1522ca420dcfcd461ba-3000x2000.jpg?auto=format&fit=max&q=75&w=750")
flat9.photos.attach(io: file, filename: "flat9.png", content_type: "image/png")
flat9.save

# flat10 = Flat.create!(
#   address: "500 Ocean Dr, Miami, USA",
#   price: 200,
#   capacity: 5,
#   user: user4,
#   title: "Luxury Beachfront Condo",
#   description: "A luxurious condo with direct beach access and stunning ocean views.",
#   image_url: "https://www.barokimiamirealty.com/wp-content/uploads/2019/01/P0016-Elegante-apartamento-con-vista-al-mar-en-Edgewater-Miami-min.jpg",
#   available_start: "2024-09-01",
#   available_end: "2024-09-15",
#   available_days: "Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday"
# )
# file = URI.open("https://www.barokimiamirealty.com/wp-content/uploads/2019/01/P0016-Elegante-apartamento-con-vista-al-mar-en-Edgewater-Miami-min.jpg")
# flat10.photos.attach(io: file, filename: "flat10.png", content_type: "image/png")
# flat10.save

flat11 = Flat.create!(
  address: "789 Maple Ave, Metropolis, USA",
  price: 90,
  capacity: 3,
  user: user4,
  title: "Charming Suburban Home",
  description: "A charming home in a quiet suburban neighborhood.",
  image_url: "https://www.shutterstock.com/image-photo/living-room-interior-gray-brown-600nw-557515885.jpg",
  available_start: "2024-10-01",
  available_end: "2024-10-20",
  available_days: "Saturday, Sunday"
)
file = URI.open("https://www.shutterstock.com/image-photo/living-room-interior-gray-brown-600nw-557515885.jpg")
flat11.photos.attach(io: file, filename: "flat11.png", content_type: "image/png")
flat11.save

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
