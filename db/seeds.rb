require 'faker'

puts "🌱 Seeding data..."

# Make 50 rides
10.times do
  # create a ride with random data
  ride = Ride.create(
    park: Faker::Name.name,
    name: Faker::Name.name
  )

    # A review belongs to a ride and a reviewer, so we must provide those foreign keys
    Review.create(
      writer: Faker::Name.unique,
      body: Faker::Lorem.sentence,
      ride_id: ride.id
    )
end

puts "🌱 Done seeding!"