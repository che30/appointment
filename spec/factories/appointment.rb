# spec/factories/appointments.rb
FactoryBot.define do
    factory :appointment do
      message { Faker::Lorem.sentence }
      time_slot { Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :default)}
      email 'foo@bar.com'
      date_of_appointment { Faker::Date.between(from: '2014-09-23', to: '2014-09-25') }
    end
  end
  