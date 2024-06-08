# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require 'faker'

# Limpiar la base de datos
ActiveStorage::Attachment.destroy_all
ActiveStorage::Blob.destroy_all
Booking.destroy_all
Flat.destroy_all
User.destroy_all

# Crear usuarios
users = []
5.times do
  users << User.create!(
    email: Faker::Internet.email,
    encrypted_password: Devise::Encryptor.digest(User, 'password'), # Devise password encryption
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    country: Faker::Address.country
  )
end

# Crear flats
flats = []
10.times do
  flats << Flat.create!(
    title: Faker::Lorem.sentence(word_count: 3),
    address: Faker::Address.full_address,
    price: Faker::Number.between(from: 50, to: 500),
    capacity: Faker::Number.between(from: 1, to: 10),
    user: users.sample,
    description: Faker::Lorem.paragraph(sentence_count: 5),
    image_url: Faker::LoremFlickr.image(size: "300x300", search_terms: ['house']),
    reserved: [true, false].sample,
    available_start: Faker::Date.forward(days: 23),
    available_end: Faker::Date.forward(days: 60),
    available_days: (1..30).to_a.sample(15).map(&:to_s).join(', ') # Assuming available_days is a comma-separated string
  )
end

# Crear bookings
20.times do
  Booking.create!(
    check_in: Faker::Date.forward(days: 10),
    check_out: Faker::Date.forward(days: 20),
    status: [0, 1, 2].sample, # Assuming you have enum status in Booking model
    user: users.sample,
    flat: flats.sample
  )
end

puts "Seed completed!"
