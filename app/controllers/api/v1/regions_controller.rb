class Api::V1::RegionsController < API::V1::BaseController
  def index
    render json: Region.all
  end

  def show
    render json: Region.find(params[:id]).countries
  end

  private
    def region_params
      params.permit(:id, :name)
    end
end