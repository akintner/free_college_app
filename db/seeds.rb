# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Region.create([{region: "Europe"}, {region: "North America"}, {region: "South America"}, {region: "Central America"}, {region: "Africa"}, {region: "Asia"}])
# Country.create([region_id: 3 {name:"Argentina"}, {name: "Ecuador"}, {name: "Uruguay"}], [region_id: 1 {name: "Austria"}, {name: "France"}, {name: "Iceland"}, 
#   {name: "Ireland"}, {name: "Germany"}, {name: "Luxembourg"}, {name: "Finland"}, {name: "Norway"}], [region_id: 5 {name: "Morocco"}, {name: "Tunisia"}], 
#   [region_id: 2 {name: "Cuba"}, {name: "Mexico"}], [{region_id: 4, name: "Panama"}])

def self.start
  seed = Seed.new
  seed.destroy
  seed.generate_regions
  seed.generate_countries
  seed.generate_universities
end

def self.destroy
  Region.destroy_all
  Country.destroy_all
  University.destroy_all
end

def generate_regions
  Region.create!([{region: "Europe"}, {region: "North America"}, {region: "South America"}, 
    {region: "Central America"}, {region: "Africa"}, {region: "Asia"}])
end

def generate_countries
  Country.create!([region_id: 3 {name:"Argentina"}, {name: "Ecuador"}, {name: "Uruguay"}], [region_id: 1 {name: "Austria"}, {name: "France"}, {name: "Iceland"}, 
    {name: "Ireland"}, {name: "Germany"}, {name: "Luxembourg"}, {name: "Finland"}, {name: "Norway"}], [region_id: 5 {name: "Morocco"}, {name: "Tunisia"}], 
    [region_id: 2 {name: "Cuba"}, {name: "Mexico"}], [{region_id: 4, name: "Panama"}])
end

def generate_universities
  20.times do |i|
    uni = University.create!(name: Faker::Educator.university, tuition_fee: 1000.00, application_fee: 50.00,
      visa: true, country_id: [Country.all].sample.id )
    puts "University #{i}: created!"
  end
end