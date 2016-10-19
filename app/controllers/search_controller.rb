class SearchController < ApplicationController
  def index
    @stations = Faraday.get "https://developer.nrel.gov/api/alt-fuel-stations/v1.json?api_key=#{API_KEY}"

  end

end
