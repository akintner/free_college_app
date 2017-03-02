require 'rails_helper'

RSpec.describe "UniversityService" do 
  it "pulls data off the API and formats correctly" do 
    raw_universities = UniversityService.find_universities

    expect(raw_universities).to be_an(Array)
    expect(raw_universities.count).to eq(10)
        
    uni = raw_universities.first
    expect(uni).to be_a(Hash)
    expect(uni).to have_key(:name)
    expect(uni).to have_key(:hsname)
    expect(uni).to have_key(:hauptsprache)
    expect(uni).to have_key(:hsStandort)
    expect(uni[:hauptsprache]).to be_a(String)
  end
end