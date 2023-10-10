puts "🌱 Seeding data..."

# Make 10 users
10.times do
  Reviewer.create(name: Faker::Name.name)
end

10.times do
  Ride.create(name: Faker::Name.name)
end

# 10.times do
#   Ride.create(image: Faker::Image.image)
# end

# # Make 50 rides
# 10.times do
#   # create a ride with random data
#   Ride.create(
#     image: Faker::Ride.image,
#     park: Faker::Ride.park,
#     name: Faker::Ride.name
#   )
  
#   # create between 1 and 5 reviews for each ride
#   rand(1..5).times do
#     # get a random reviewer for every review
#     # https://stackoverflow.com/a/25577054
#     reviewer = Reviewer.order('RANDOM()').first

#     # A review belongs to a ride and a reviewer, so we must provide those foreign keys
#     Review.create(
#       likes: rand(1..10),
#       body: Faker::Lorem.sentence,
#       ride_id: ride.id,
#       reviewer_id: reviewer.id
#     )
#   end
# end

puts "🌱 Done seeding!"