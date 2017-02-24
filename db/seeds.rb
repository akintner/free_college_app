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
class Seed

  def self.start
    seed = Seed.new
    seed.destroy
    seed.generate_regions
    seed.generate_countries
    seed.generate_universities
  end

  def destroy
    University.destroy_all
    Country.destroy_all
    Region.destroy_all
  end

  def generate_regions
    Region.create!([{region: "Europe"}, {region: "North America"}, {region: "South America"}, 
      {region: "Central America"}, {region: "Africa"}])
  end

  def generate_countries
    Country.create!([{region_id: Region.find_by(region: "South America").id, name: "Argentina"}, {region_id: Region.find_by(region: "South America").id, name: "Brazil"}, {region_id: Region.find_by(region: "South America").id, name: "Ecuador"}, 
      {region_id: Region.find_by(region: "South America").id, name: "Uruguay"},  {region_id: Region.first.id, name: "Austria"}, {region_id: Region.first.id, name: "Czech Republic"}, {region_id: Region.first.id, name: "Denmark"}, 
      {region_id: Region.first.id, name: "Finland"}, {region_id: Region.first.id, name: "France"}, {region_id: Region.first.id, name: "Germany"}, {region_id: Region.first.id, name: "Iceland"}, {region_id: Region.first.id, name: "Ireland"}, 
      {region_id: Region.first.id, name: "Luxembourg"}, {region_id: Region.first.id, name: "Norway"}, {region_id: Region.first.id, name: "Slovenia"}, {region_id: Region.last.id, name: "Morocco"}, {region_id: Region.last.id, name: "Tunisia"}, 
      {region_id: Region.find_by(region: "North America").id, name: "Cuba"}, {region_id: Region.find_by(region: "North America").id, name: "Mexico"}, {region_id: Region.find_by(region: "Central America").id, name: "Panama"}])
  end

  def generate_universities
    20.times do |i|
      uni = University.create!(name: Faker::University.name, tuition_fee: 1000.00, application_fee: 50.00,
        visa: true, country_id: Country.all.sample.id )
      puts "University #{i}: #{uni.name} created"
    end

    10.times do |i|
      uni = University.create!(name: Faker::University.name, tuition_fee: 1000.00, application_fee: 50.00,
        visa: true, country_id: Country.all.sample.id )
      puts "University #{i}: #{uni.name} created"
    end
  end
end

Seed.start