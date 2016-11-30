FactoryGirl.define do
  factory :phone do
    name { Faker::Name.name }
    photo_url { Faker::Placeholdit.image('245x245') }
    price { Faker::Number.decimal(2) }
    description { Faker::Lorem.paragraph }
    category
  end
end
