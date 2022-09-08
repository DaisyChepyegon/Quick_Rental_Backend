class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get '/houses' do
    houses = House.all.order(:location).limit(20)
    houses.to_json
  end

  get '/houses' do
    houses = House.all.order(:price).limit(20)
    houses.to_json
  end

  get '/houses/:id' do
    houses = House.find(params[:id])
    
    houses.to_json(include: :reviews)
  end

  get '/reviews' do
    reviews = Review.all.order(:name).limit(20)
    reviews.to_json
  end

  post '/reviews' do
    review = Review.create(
      name: params[:name],
      comment: params[:comment],
      house_id: params[:house_id]
    )
    review.to_json
  end

  post '/houses' do
    house = House.create(
      location: params[:location],
      bedrooms: params[:bedrooms],
      price: params[:price],
      landload_id: params[:landload_id],
      description: params[:description]
    )
  end

  delete '/houses/:id' do
    houses = House.find(params[:id])
    houses.destroy
    houses.to_json
  end

  delete '/reviews/:id' do
    review = Review.find(params[:id])
    review.destroy
    review.to_json
  end

  patch '/houses/:id' do
    house = House.find(params[:id])
    house.update(
      price: params[:price],
      description: params[:description]
    )
    house.to_json
  end

end
