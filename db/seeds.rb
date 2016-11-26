Phone.destroy_all
User.destroy_all

User.create email: 'admin@phonestore.com', password: '123456', name: 'Admin'

30.times do
  FactoryGirl.create :phone
end
