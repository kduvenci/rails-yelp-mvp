require 'faker'

10.times do
  Restaurant.create!(
    name: Faker::Superhero.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: %w(chinese italian japanese french belgian).sample
  )
end
