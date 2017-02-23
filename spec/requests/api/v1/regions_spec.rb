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

  it "provides read access for a single region and its countries" do
    get "/api/v1/regions/#{@region1.id}"

    countries = JSON.parse(response.body)
    country = countries.first

    expect(response).to be_success
    expect(country).to have_key("name")
    expect(country["region_id"]).to eq(@region1.id)
    expect(country["name"]).to eq(@region1.countries.first.name)
  end
end