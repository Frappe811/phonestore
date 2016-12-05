FactoryGirl.define do
  factory :phone do
    name { Faker::Name.name }
    photo_url { Faker::Placeholdit.image('245x245') }
    price { Faker::Number.decimal(2) }
    description { Faker::Lorem.paragraph }
    category
    display { "Super AMOLED #{Faker::Number.between(3,6)} inch"}
    os { "Android #{Faker::Number.between(4,6)}" }
    back_camera { "#{Faker::Number.between(2,16)} MP" }
    font_camera { "#{Faker::Number.between(2,5)} MP" }
    cpu { "Snapdragon #{Faker::Number.number(4)} #{Faker::Number.number(1)} Core" }
    ram { "#{Faker::Number.between(1,4)} GB" }
    storage { "#{Faker::Number.number(2)} GB" }
    sp_storage { "#{Faker::Number.number(3)} GB" }
    sim { "#{Faker::Number.between(1, 2)} Sim" }
    battery { "#{Faker::Number.number(4)} mAh" }
    flag { Faker::Boolean.boolean }
  end
end
