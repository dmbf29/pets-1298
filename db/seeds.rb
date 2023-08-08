puts 'Cleaning the DB...'
Pet.destroy_all

puts 'Creating pets...'
20.times do
  Pet.create!(
    name: Faker::Creature::Horse.unique.name,
    species: Pet::SPECIES.sample,
    address: Faker::Address.street_address,
    date: Date.today - rand(1..10)
  )
end
puts "... created #{Pet.count} pets."
