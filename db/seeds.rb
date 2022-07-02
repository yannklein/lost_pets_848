puts "Destroy all the pets"
Pet.destroy_all

puts "Create 10 pets"
10.times do
  Pet.create!(
    name: Faker::Creature::Animal.name,
    species: Pet::SPECIES.sample,
    color: Faker::Color.color_name,
    gender: Pet::GENDER.sample,
    location: Faker::Address.street_address,
    found_on: Faker::Date.between(from: 10.days.ago, to: Date.today)
  )
end
puts "Done"