FactoryGirl.define do
  factory :course do
    name Faker::HarryPotter.book
    language Faker::StarWars.specie
    university
  end
end
