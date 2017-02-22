FactoryGirl.define do
  factory :region do |f|
    f.sequence(:region) { |n| "#{Faker::Ancient.primordial} #{n}" }
  end
end