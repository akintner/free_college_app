class Api::V1::CountriesController < API::V1::BaseController
  def index
    render json: Country.all
  end

  def show
    render json: Country.find(params[:country_id]).universities
  end

  private
    def country_params
      params.permit(:region_id, :name)
    end
end