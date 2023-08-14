FactoryBot.define do
  factory :to_do do
    task { Faker::Lorem.sentence }
    states { Faker::Lorem.word }
  end
end
