class Country < ActiveRecord::Base
  def self.AddCountry(country)

  end

  def self.RefreshData
    response = HTTParty.get("http://api.population.io:80/1.0/countries", format: :json)
    countries = response['countries']

    countries.each do |country|
      record = Country.create!(name: country)
      record.save
    end
  end

  def GetCountryDetails(countryId)
    currentYear = Date.current.year
    countryName = Country.find(countryId).name

    queryString = "http://api.population.io:80/1.0/population/#{currentYear}/#{countryName}"
    countryDetails = HTTParty.get(queryString, format: :json)

    countryDetails
  end
end
