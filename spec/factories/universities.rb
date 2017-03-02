FactoryGirl.define do
  factory :university do |f|
    f.sequence(:name) { |n| "#{Faker::Educator.university} #{n}"} 
    language Faker::StarWars.planet
    application_fee 0.00
    tuition_fee 100.00
    visa "needed for stays longer than 3 months"
    country
  end
end
