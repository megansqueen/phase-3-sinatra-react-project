class ApplicationController < Sinatra::Base

set :default_content_type, 'application/json'

  get '/rides' do
    rides = Ride.all.order(:name)
    rides.to_json
  end

  get '/rides/:id' do
    ride = Ride.find(params[:id])
      ride.to_json(only: [:id, :name, :park, :image], include: {
        reviews: {only: [:body, :likes], include: {
          reviewer: {only: [:name]}
        }}
      })
  end

  get '/reviewers' do
    reviewers = Reviewer.all.order(:name)
    reviewers.to_json
  end

end