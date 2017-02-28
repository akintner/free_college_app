require 'rails_helper'

RSpec.describe "user sees universities from the DAAD API" do

  scenario "all universities from the DAAD API will display on index page" do 
    visit universities_path

    expect(page).to have_content("Applied Chemistry (Dual Course) at FH Aachen - University of Applied Sciences")
    expect(page).to have_content("Aachen")
    expect(page).to have_content("Language of Courses:")
    expect(page).to have_content("Winter Semester only")
  end
end