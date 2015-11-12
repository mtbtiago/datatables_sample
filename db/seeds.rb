(1..1000).each { User.create!(name: Faker::Name.name, phone: Faker::PhoneNumber.phone_number, address: Faker::Address.street_name) }
