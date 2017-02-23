require 'rails_helper'

describe "API for regions" do
  before do
    @region1 = create(:region)
    @region2 = create(:region)
    countries1 = create_list(:country, 3)
    countries2 = create_list(:country, 2)
    @region1.countries << countries1
    @region2.countries << countries2
  end

  it "provides read access for regions" do
    get "/api/v1/regions"

    regions = JSON.parse(response.body)
    region = regions.first

    expect(response).to be_success
    expect(region).to have_key("region")
    expect(region["region"]).to eq(@region1.region)
  end
end