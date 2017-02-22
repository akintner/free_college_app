FactoryGirl.define do
  factory :country do |f|
    f.sequence(:name) { |n| "#{Faker::StarWars.planet} #{n}" }
    region
  end
end
