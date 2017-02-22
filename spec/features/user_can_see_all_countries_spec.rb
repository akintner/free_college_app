require 'rails_helper'

RSpec.describe "user sees all countries" do

  before do 
    @countries = create_list(:country, 3)
  end

  scenario "all countries will display on index page" do 
    visit countries_path

    country1 = @countries.first
    country3 = @countries.last
    expect(page).to have_content("Check out these countries where college is free:")
    expect(page).to have_content(country1.name)
    expect(page).to have_content(country3.name)
  end
end
