Phone.destroy_all
User.destroy_all
Category.destroy_all
Admin.destroy_all

Admin.create email: 'admin@gmail.com' , password: '123456'
User.create email: 'admins@phonestore.com', password: '123456', name: 'Admin'
User.create email: 'admins2@phonestore.com', password: '123456', name: 'Admin'

['Iphone', 'Samsung', 'Sony', 'Xiaomi', 'Blackberry', 'LG'].each do |brand_name|
  category = FactoryGirl.create :category, brand_name: brand_name

  20.times do
    FactoryGirl.create :phone, category: category
  end
  Phone.where(category_id: '1').update_all(photo_url: "https://vinhphatmobile.com/images/thumbnails/300/300/detailed/9/111.png")
  Phone.where(category_id: '2').update_all(photo_url: "https://vinhphatmobile.com/images/thumbnails/300/300/detailed/9/1_iuwx-it.jpg")
  Phone.where(category_id: '3').update_all(photo_url: "https://vinhphatmobile.com/images/thumbnails/300/300/detailed/5/SP-0188_(1).jpg")
  Phone.where(category_id: '4').update_all(photo_url: "https://vinhphatmobile.com/images/thumbnails/300/300/detailed/9/3_0ltq-p6_giyn-4e.jpg")
  Phone.where(category_id: '5').update_all(photo_url: "https://vinhphatmobile.com/images/thumbnails/300/300/detailed/6/z10_dmh.jpg")
  Phone.where(category_id: '6').update_all(photo_url: "https://vinhphatmobile.com/images/thumbnails/300/300/detailed/8/SP-0185_(1)_sn7m-2b.jpg")
end
