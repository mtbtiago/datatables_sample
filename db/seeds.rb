(1..1000).each do
  User.create!(
    name: Faker::Name.name,
    phone: Faker::PhoneNumber.phone_number,
    address: Faker::Address.street_name,
    dob: Faker::Date.between(30.years.ago, Date.today),
    card: Faker::Number.between(1, 1000))
end
