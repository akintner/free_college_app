class Api::V1::UniversitiesController < API::V1::BaseController
  def index
    render json: University.all
  end

  private
    def uni_params
      params.permit(:country_id, :name)
    end
end