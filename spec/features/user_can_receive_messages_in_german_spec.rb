require 'rails_helper'

RSpec.describe "Rails International API" do 
  before do 
    I18n.default_locale = :de
  end

  scenario "user visits from another country and locale is taken from URL" do 
    visit root_path

    expect(page.status_code).to eq(200)
    expect(I18n.locale).to eq(:de)
  end

  scenario "user visits sad path from another country" do 
    # visit "/api/v1"

    # expect(page.status_code).to eq(404)
    # expect(page.errors).to have_content("Fehler")
  end
end