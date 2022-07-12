# spec/factories/doctors.rb
FactoryBot.define do
  factory :doctor do
    first_name { Faker::Name.name }
    last_name { Faker::Name.name }
    email 'foo@bar.com'
    specialty { Faker::Name.name }
  end
end
