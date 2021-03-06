class CountriesController < ApplicationController
  before_action :set_country, only: [:show, :edit, :update, :destroy]

  # GET /countries
  # GET /countries.json
  def index
    if Country.count == 0
      Country.RefreshData
    end

    @countries = Country.all
  end

  # GET /countries/1
  # GET /countries/1.json
  def show
    country = Country.find(params[:id])

    @countryDetails = country.GetCountryDetails(params[:id])
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_country
      @country = Country.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def country_params
      params.require(:country).permit(:name)
    end
end
