FactoryGirl.define do
  factory :category do
    brand_name { Faker::Name.name }
    flag { Faker::Boolean.boolean }
  end
end
