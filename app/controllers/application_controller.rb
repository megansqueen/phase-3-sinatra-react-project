class ApplicationController < Sinatra::Base

set :default_content_type, 'application/json'

  get '/rides' do
    rides = Ride.all.order(:name)
    rides.to_json(include: :reviews)
  end

  get '/rides/:id' do
    ride = Ride.find(params[:id])
      ride.to_json(include: :reviews)
  end

  delete '/rides/:id' do
    rides = Ride.find(params[:id])
    rides.destroy
    rides.to_json
  end

  patch '/rides/:id' do
    ride = Ride.find(params[:id])
    ride.update(
      image: params[:image],
      name: params[:name],
      park: params[:park]
    )
    ride.to_json(include: :reviews)
  end

  post '/rides' do
    ride = Ride.create(
      image: params[:image],
      name: params[:name],
      park: params[:park]
    )
    ride.to_json(include: :reviews)
  end

  get '/rides/:id/reviews' do
    ride = Ride.find(params[:id])
    reviews = ride.reviews.pluck(:id, :body, :writer, :ride_id, :created_at).map do
      |review| {id: review[0], body: review[1], writer: review[2], ride_id: review[3], created_at: review[4]}
    end
    reviews.to_json
  end

  delete '/reviews/:id' do
    review = Review.find(params[:id])
    review.destroy
    review.to_json
  end

  post '/rides/:id/reviews' do
    review = Review.create(
      writer: params[:writer],
      body: params[:body],
      ride_id: params[:id]
  )
    review.to_json
  end

end