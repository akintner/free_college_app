class Api::V1::UniversitiesController < ApplicationController
  def index
    render json: University.all
  end

  private
    def uni_params
      params.permit(:country_id, :name)
    end
end