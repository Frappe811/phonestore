Phone.destroy_all
User.destroy_all
Category.destroy_all

User.create email: 'admin@phonestore.com', password: '123456', name: 'Admin'

['Iphone', 'Samsung', 'Sony', 'Xiaomi', 'Blackberry', 'LG'].each do |brand_name|
  category = FactoryGirl.create :category, brand_name: brand_name

  20.times do
    FactoryGirl.create :phone, category: category
  end
end
