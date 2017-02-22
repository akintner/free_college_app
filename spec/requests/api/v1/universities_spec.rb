require 'rails_helper'

describe "API for universities" do
  before do
    @region = create(:region)
    countries = create_list(:country, 3)
    @region.countries << countries
    @country1 = countries.first
    @country2 = countries.last
    unis1 = create_list(:university, 2)
    unis2 = create_list(:university, 2)
    @country1.universities << unis1
    @country2.universities << unis2
  end

  it "provides read access for all universities" do
    get "/api/v1/universities"

    universities = JSON.parse(response.body)
    univ = universities.first
    
    expect(response).to be_success
    expect(universities.count).to eq(4)
    expect(univ).to have_key("name")
    expect(univ).to have_key("application_fee")
    expect(univ).to have_key("tuition_fee")
    expect(univ).to have_key("visa")
    @country1.universities.each do |uni|
      expect(uni["country_id"]).to eq(@country1.id)
    end
  end

  it "provides read access for universities scoped to country" do 
    get "/api/v1/countries/#{@country2.id}/universities"
    
    universities = JSON.parse(response.body)
    univ = universities.first

    expect(response).to be_success
    expect(universities.count).to eq(2)

    @country2.universities.each do |uni|
      expect(uni["country_id"]).to eq(@country2.id)
    end
  end
end