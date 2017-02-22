class Api::V1::CountriesController < ApplicationController
  def index
    render json: Country.all
  end

  private
    def country_params
      params.permit(:region_id, :name)
    end
end