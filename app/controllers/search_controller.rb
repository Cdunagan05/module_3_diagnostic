class SearchController < ApplicationController
  def index
    response = Faraday.get "https://developer.nrel.gov/api/alt-fuel-stations/v1.json?api_key=#{ENV['API_KEY']}"
    response_json = JSON.parse(response.body)
    fuel = response_json["fuel_stations"]
    #fuel is an array
    fuel[0]["station_name"] = station_name
    fuel[0]["street_address"] = street_address
    fuel[0]["fuel_type_code"] = fuel_type
    fuel[0]["access_days_time"] = access_days_time
  end

end
