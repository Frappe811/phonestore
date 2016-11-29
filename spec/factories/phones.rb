FactoryGirl.define do
  factory :phone do
    name { Faker::Name.name }
    photo_url { Faker::Placeholdit.image('221x221') }
    price { Faker::Number.decimal(2) }
    description { Faker::Lorem.paragraph }
    display { Faker::Name.last_name }
    os { Faker::Name.last_name }
    back_camera { Faker::Name.last_name }
    font_camera { Faker::Name.last_name }
    cpu { Faker::Name.last_name }
    ram { Faker::Name.last_name }
    storage { Faker::Name.last_name }
    sp_storage { Faker::Name.last_name }
    sim { Faker::Name.last_name }
    battery { Faker::Name.last_name }
  end
end
