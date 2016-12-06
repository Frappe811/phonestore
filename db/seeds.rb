Phone.destroy_all
User.destroy_all
Category.destroy_all
Admin.destroy_all

Admin.create email: 'admin@gmail.com' , password: '123456'
User.create email: 'admins@phonestore.com', password: '123456', name: 'Admin'
User.create email: 'admins2@phonestore.com', password: '123456', name: 'Admin'
Cart.create user_id: 1 , status: 1
Cart.create user_id: 1 , status: 1
Cart.create user_id: 2 , status: 1
Cart.create user_id: 2 , status: 1

['Iphone', 'Samsung', 'Sony', 'Xiaomi', 'Blackberry', 'LG'].each do |brand_name|
  category = FactoryGirl.create :category, brand_name: brand_name

  20.times do
    FactoryGirl.create :phone, category: category
  end
end
