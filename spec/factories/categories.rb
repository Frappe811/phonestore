FactoryGirl.define do
  factory :category do
    brand_name { Faker::Name.name }
  end
end
