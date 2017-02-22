FactoryGirl.define do
  factory :university do
    name Faker::Educator.university 
    application_fee 0.00
    tuition_fee 100.00
    visa true 
    country
  end
end
