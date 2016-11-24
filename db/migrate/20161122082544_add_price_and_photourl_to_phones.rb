class AddPriceAndPhotourlToPhones < ActiveRecord::Migration
  def change
    add_column :phones, :price, :decimal
    add_column :phones, :photo_url, :string
  end
end
