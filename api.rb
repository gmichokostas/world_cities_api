require 'sinatra'
require 'data_mapper'

DataMapper.setup(:default, ENV['DATABASE_URL'] || "sqlite3://#{Dir.pwd}/world_cities.db")

require "#{Dir.pwd}/models/world_city.rb"

# helpers
helpers do
  def jsonize(city)
    city.to_json(
      only: [:id, :city, :city_ascii, :country, :iso2, :iso3, :province],
      methods: [:location, :population]
    )
  end
end

get '/' do
  "Over 7.300 cities from around the world.<br />"\
  "Included all country/province capitals, major cities and towns, and smaller towns in sparsely inhabited regions."
end

get '/cities' do
  content_type :json, 'charset' => 'utf-8'

  @cities = WorldCity.all
  jsonize @cities
end

get '/cities/:id' do
  content_type :json, 'charset' => 'utf-8'
  @city = WorldCity.get(params[:id])
  jsonize @city
end

not_found do
  "<h1>Not Found</h1>"
end
