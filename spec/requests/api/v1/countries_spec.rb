require 'rails_helper'

describe "API for countries" do
  before (:each) do
    @region = create(:region)
    countries = create_list(:country, 3)
    @region.countries << countries
  end

  it "provides read access for countries" do
    get "/api/v1/countries"

    countries = JSON.parse(response.body)
    country = countries.first

    expect(response).to be_success
    expect(countries.count).to eq(3)
    expect(country).to have_key("name")
    countries.each do |country|
      expect(country["region_id"]).to eq(@region.id)
    end
  end
end