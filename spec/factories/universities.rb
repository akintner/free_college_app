FactoryGirl.define do
  factory :university do |f|
    f.sequence(:name) { |n| "#{Faker::Educator.university} #{n}"} 
    
    application_fee 0.00
    tuition_fee 100.00
    visa true 
    country
  end
end
